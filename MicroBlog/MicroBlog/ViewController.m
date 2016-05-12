//
//  ViewController.m
//  MicroBlog
//
//  Created by mac on 5/10/16.
//  Copyright © 2016 weifengdq. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "HomeTLViewController.h"

//appkey
#define APP_KEY @"3901934763"
#define APP_SECRET @"38230743694a66180a3ceecbc5873211"
//回调地址
#define R_URL @"http://www.baidu.com"
/********************************************
 App Key：3901934763
 App Secret：38230743694a66180a3ceecbc5873211
 *******************************************/

@interface ViewController ()<UIWebViewDelegate>
{
    NSString *_access_token;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


#pragma mark - 请求授权响应
- (IBAction)requestAction:(id)sender {
    //请求授权--------------------------------------------------------
    
    //Doc: http://open.weibo.com/wiki/Oauth2/authorize
    //HTTP请求方式: GET/POST
    //URL: https://api.weibo.com/oauth2/authorize
    /****************************************************************
     请求参数         必选   类型及范围	 说明
     client_id      true	string	申请应用时分配的AppKey。
     redirect_uri   true	string	授权回调地址，站外应用需与设置的回调地址一致，站内应用需填写canvas page的地址。
     scope          false	string	申请scope权限所需参数，可一次申请多个scope权限，用逗号分隔。使用文档
     state          false	string	用于保持请求和回调的状态，在回调时，会在Query Parameter中回传该参数。开发者可以用这个参数验证请求有效性，也可以记录用户请求授权页前的位置。这个参数可用于防止跨站请求伪造（CSRF）攻击
     display        false	string	授权页面的终端类型，取值见下面的说明。
     forcelogin     false	boolean	是否强制用户重新登录，true：是，false：否。默认false。
     language       false	string	授权页语言，缺省为中文简体版，en为英文版。英文版测试中，开发者任何意见可反馈至 @微博API
     ***************************************************************/
    /****************************************************************
     返回值字段	字段类型	字段说明
     code       string	用于第二步调用oauth2/access_token接口，获取授权后的access token。
     state      string	如果传递参数，会回传该参数。
     ***************************************************************/
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    webView.delegate = self;
    
    //URL
    NSString *urlStr = [NSString stringWithFormat:@"https://api.weibo.com/oauth2/authorize?client_id=%@&redirect_uri=%@", APP_KEY, R_URL];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    //request
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    //webview加载request
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
}


#pragma mark - UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    //请求授权的返回字段
    NSString *urlStr = request.URL.absoluteString;
    //NSLog(@"%@", urlStr);   //http://www.baidu.com/?code=6d48327c3d781534fb46cf5c15372ea9
    
    //取出code部分的字段
    NSRange range = [urlStr rangeOfString:@"code="];
    if (range.length > 0) {
        //取出code
        NSArray *strArr = [urlStr componentsSeparatedByString:@"code="];
        NSString *code = [strArr lastObject];
        
        //获取授权--------------------------------------------------------
        
        //Doc: http://open.weibo.com/wiki/OAuth2/access_token
        //HTTP请求方式: POST
        //URL: https://api.weibo.com/oauth2/access_token
        /****************************************************************
         请求参数             必选   类型及范围        说明
         client_id          true	string	申请应用时分配的AppKey。
         client_secret      true	string	申请应用时分配的AppSecret。
         grant_type         true	string	请求的类型，填写authorization_code
         ***************************************************************/
        /****************************************************************
         返回值字段	    字段类型	字段说明
         access_token	string	用户授权的唯一票据，用于调用微博的开放接口，同时也是第三方应用验证微博用户登录的唯一票据，第三方应用应该用该票据和自己应用内的用户建立唯一影射关系，来识别登录状态，不能使用本返回值里的UID字段来做登录识别。
         expires_in	    string	access_token的生命周期，单位是秒数。
         remind_in	    string	access_token的生命周期（该参数即将废弃，开发者请使用expires_in）。
         uid	        string	授权用户的UID，本字段只是为了方便开发者，减少一次user/show接口调用而返回的，第三方应用不能用此字段作为用户登录状态的识别，只有access_token才是用户授权的唯一票据。
        ***************************************************************/

        //1,创建manager
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        //2,配置参数
        NSDictionary *dic = @{@"client_id":APP_KEY,
                              @"client_secret":APP_SECRET,
                              @"grant_type":@"authorization_code",
                              @"code":code,
                              @"redirect_uri":R_URL};
        //设置响应解析器支持的内容格式
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
        //3,post请求
        [manager POST:@"https://api.weibo.com/oauth2/access_token"
           parameters:dic
             progress:nil
              success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                  
                  NSLog(@"%@",responseObject);
                  
                  /***************************
                   {
                        "access_token" = "2.00hPlFUDfTHEQE7eeade19f72b3CbB";
                        "expires_in" = 157679999;
                        "remind_in" = 157679999;
                        uid = 3193061857;
                   }
                   **************************/
                  NSDictionary *dic = [[NSDictionary alloc] init];
                  dic = (NSDictionary *)responseObject;
                  //取出access_token  只在第一次登录时才能获取
                  _access_token = [dic objectForKey:@"access_token"];
                  
                  //NSLog(@"_access_token = %@", _access_token);
                  
                  //别忘了同步
              }
              failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                  
                  NSLog(@"%@",error);
                  
              }];
        
        //移除webView ==> 拿到想要的东西卸磨杀驴
        [webView removeFromSuperview];
        
        return NO;  //拿到code之后,停止后面的request请求
    }
    
    return YES;
}



#pragma mark - home_timeline
- (IBAction)homeTimeLineAction:(id)sender {
    HomeTLViewController *vc = [[HomeTLViewController alloc] init];
    
    //属性传值
    vc.access_token = _access_token;
    
    //NSLog(@"access_token = %@", vc.access_token);
    
    //模态弹出
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end




































