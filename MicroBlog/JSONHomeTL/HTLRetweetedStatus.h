//
//  HTLRetweetedStatus.h
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTLExtendInfo, HTLUser, HTLVisible;

@interface HTLRetweetedStatus : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL favorited;
@property (nonatomic, assign) double expireTime;
@property (nonatomic, assign) BOOL truncated;
@property (nonatomic, assign) double retweetedStatusIdentifier;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) HTLExtendInfo *extendInfo;
@property (nonatomic, strong) NSString *inReplyToScreenName;
@property (nonatomic, assign) BOOL isLongText;
@property (nonatomic, strong) NSArray *picUrls;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *idstr;
@property (nonatomic, assign) double textLength;
@property (nonatomic, assign) double sourceType;
@property (nonatomic, strong) NSArray *hotWeiboTags;
@property (nonatomic, assign) id geo;
@property (nonatomic, assign) double pageType;
@property (nonatomic, strong) HTLUser *user;
@property (nonatomic, strong) NSArray *textTagTips;
@property (nonatomic, assign) double commentsCount;
@property (nonatomic, strong) NSString *thumbnailPic;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, assign) double sourceAllowclick;
@property (nonatomic, assign) double bizFeature;
@property (nonatomic, strong) NSArray *annotations;
@property (nonatomic, strong) NSString *bmiddlePic;
@property (nonatomic, strong) HTLVisible *visible;
@property (nonatomic, strong) NSArray *bizIds;
@property (nonatomic, strong) NSString *inReplyToStatusId;
@property (nonatomic, strong) NSString *mid;
@property (nonatomic, strong) NSString *cardid;
@property (nonatomic, assign) double repostsCount;
@property (nonatomic, assign) double userType;
@property (nonatomic, assign) double attitudesCount;
@property (nonatomic, strong) NSArray *darwinTags;
@property (nonatomic, assign) double mlevel;
@property (nonatomic, strong) NSString *inReplyToUserId;
@property (nonatomic, strong) NSString *picStatus;
@property (nonatomic, strong) NSString *originalPic;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
