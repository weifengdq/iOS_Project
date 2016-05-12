//
//  HomeTLViewController.m
//  MicroBlog
//
//  Created by mac on 5/10/16.
//  Copyright © 2016 weifengdq. All rights reserved.
//

#import "HomeTLViewController.h"
#import "AFNetworking.h"
#import "DataModels.h"

@interface HomeTLViewController ()<UITableViewDataSource, UITableViewDelegate>

{
    UITableView *myTableView;
    NSMutableArray *dataArr;
}

@end

@implementation HomeTLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataArr = [[NSMutableArray alloc] init];
    
    myTableView = [[UITableView alloc]init];
    myTableView.frame = self.view.frame;
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    
    [myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    

    [self requestListData];
}


//请求数据
- (void) requestListData {
    //home_timeline-----------------------------------------------------
    //Doc: http://open.weibo.com/wiki/2/statuses/home_timeline
    //HTTP请求方式: GET
    //URL:
    
    /*****************************************************************
     请求参数         必选	   类型及范围	说明
     access_token	true	string	采用OAuth授权方式为必填参数，OAuth授权后获得。
     since_id	    false	int64	若指定此参数，则返回ID比since_id大的微博（即比since_id时间晚的微博），默认为0。
     max_id	        false	int64	若指定此参数，则返回ID小于或等于max_id的微博，默认为0。
     count	        false	int	    单页返回的记录条数，最大不超过100，默认为20。
     page	        false	int	    返回结果的页码，默认为1。
     base_app	    false	int	    是否只获取当前应用的数据。0为否（所有数据），1为是（仅当前应用），默认为0。
     feature	    false	int	    过滤类型ID，0：全部、1：原创、2：图片、3：视频、4：音乐，默认为0。
     trim_user	    false	int	    返回值中user字段开关，0：返回完整user字段、1：user字段仅返回user_id，默认为0。
     ****************************************************************/
    /******************************************************************
     返回数据: JSON数据
     
     返回值字段	             字段类型	 字段说明
     created_at	             string	 微博创建时间
     id	                     int64	 微博ID
     mid	                 int64	 微博MID
     idstr	                 string	 字符串型的微博ID
     text	                 string	 微博信息内容
     source	                 string	 微博来源
     favorited	             boolean 是否已收藏，true：是，false：否
     truncated	             boolean 是否被截断，true：是，false：否
     in_reply_to_status_id	 string	（暂未支持）回复ID
     in_reply_to_user_id	 string	（暂未支持）回复人UID
     in_reply_to_screen_name string	（暂未支持）回复人昵称
     thumbnail_pic	         string	 缩略图片地址，没有时不返回此字段
     bmiddle_pic	         string	 中等尺寸图片地址，没有时不返回此字段
     original_pic	         string	 原始图片地址，没有时不返回此字段
     geo	                 object	 地理信息字段 详细
     user	                 object	 微博作者的用户信息字段 详细
     retweeted_status	     object	 被转发的原微博信息字段，当该微博为转发微博时返回 详细
     reposts_count	         int	 转发数
     comments_count	         int	 评论数
     attitudes_count	     int	 表态数
     mlevel	                 int	 暂未支持
     visible	             object	 微博的可见性及指定可见分组信息。该object中type取值，0：普通微博，1：私密微博，3：指定分组微博，4：密友微博；list_id为分组的组号
     pic_ids	             object	 微博配图ID。多图时返回多图ID，用来拼接图片url。用返回字段thumbnail_pic的地址配上该返回字段的图片ID，即可得到多个图片url。
     ad	                     object array 微博流内的推广微博ID
     *****************************************************************/
    
    //NSLog(@"access_token_1 = %@", self.access_token);
    
    //NSString *urlStr = [NSString stringWithFormat:@"https://api.weibo.com/2/statuses/home_timeline.json?access_token=%@", self.access_token];
    //NSLog(@"urlStr=%@", urlStr);
    //https://api.weibo.com/2/statuses/home_timeline.json?access_token=2.00hPlFUDfTHEQE7eeade19f72b3CbB
    //把urlStr的值粘贴到浏览器中, 回车, 复制JSON数据到JSON Accelerator中, 前缀WF, 基类MicroBlog, 把生成的文件夹拷贝到工程中
    
    //AFNetWorking Wiki: https://github.com/AFNetworking/AFNetworking/wiki/AFNetworking-3.0-Migration-Guide
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
//        //NSLog(@"JSON: %@", responseObject);
//        NSDictionary *homeTimeLineDic = (NSDictionary *)responseObject;
//        HTLMicroBlog *model = [HTLMicroBlog modelObjectWithDictionary:homeTimeLineDic];
//        
//        //头像 user-->avatar_large
//        //名字 user-->screen_name
//        
//        //展示 bmiddle_pic
//        
//        //头像
//        NSString *urlStr = ((HTLUser *)((HTLStatuses *)model.statuses[0]).user).avatarLarge;
//        NSURL *url = [NSURL URLWithString:urlStr];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        //内容 text
//        NSString *text = ((HTLStatuses *)model.statuses[0]).text;
//        NSLog(@"text = %@", text);
//        self.contentText.text = text;
//
//    } failure:^(NSURLSessionTask *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    
    //HTLMicroBlog *model = [HTLMicroBlog modelObjectWithDictionary:]
    
    
    //先判断是否有token
    NSString *tokenKey = self.access_token;
    
    if (tokenKey) {
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        
        [manager GET:@"https://api.weibo.com/2/statuses/home_timeline.json" parameters:@{@"access_token":tokenKey} progress:nil
             success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                 
                 NSArray *keys = [responseObject allKeys];
                 if (![keys containsObject:@"error_code"])
                 {
                     //拿到正确的值
                     HTLMicroBlog *model = [HTLMicroBlog modelObjectWithDictionary:responseObject];
                     
                     [dataArr setArray:model.statuses];
                     
                     //更新了数据源,必须刷新表
                     [myTableView reloadData];
                 }
                 
                 
                 NSLog(@"%@",responseObject);
                 
                 
             } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                 NSLog(@"%@",error);
             }];
    }
    else {
        NSLog(@"请先授权!!!");
    }
}


#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    HTLStatuses *model = dataArr[indexPath.row];
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:model.user.profileImageUrl]];
    
    cell.imageView.image = [UIImage imageWithData:data];
    cell.textLabel.text = model.text;
    
    return cell;
}

@end
