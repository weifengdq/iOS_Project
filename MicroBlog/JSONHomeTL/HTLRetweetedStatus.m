//
//  HTLRetweetedStatus.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLRetweetedStatus.h"
#import "HTLExtendInfo.h"
#import "HTLPicUrls.h"
#import "HTLUser.h"
#import "HTLAnnotations.h"
#import "HTLVisible.h"


NSString *const kHTLRetweetedStatusFavorited = @"favorited";
NSString *const kHTLRetweetedStatusExpireTime = @"expire_time";
NSString *const kHTLRetweetedStatusTruncated = @"truncated";
NSString *const kHTLRetweetedStatusId = @"id";
NSString *const kHTLRetweetedStatusCreatedAt = @"created_at";
NSString *const kHTLRetweetedStatusExtendInfo = @"extend_info";
NSString *const kHTLRetweetedStatusInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kHTLRetweetedStatusIsLongText = @"isLongText";
NSString *const kHTLRetweetedStatusPicUrls = @"pic_urls";
NSString *const kHTLRetweetedStatusText = @"text";
NSString *const kHTLRetweetedStatusIdstr = @"idstr";
NSString *const kHTLRetweetedStatusTextLength = @"textLength";
NSString *const kHTLRetweetedStatusSourceType = @"source_type";
NSString *const kHTLRetweetedStatusHotWeiboTags = @"hot_weibo_tags";
NSString *const kHTLRetweetedStatusGeo = @"geo";
NSString *const kHTLRetweetedStatusPageType = @"page_type";
NSString *const kHTLRetweetedStatusUser = @"user";
NSString *const kHTLRetweetedStatusTextTagTips = @"text_tag_tips";
NSString *const kHTLRetweetedStatusCommentsCount = @"comments_count";
NSString *const kHTLRetweetedStatusThumbnailPic = @"thumbnail_pic";
NSString *const kHTLRetweetedStatusSource = @"source";
NSString *const kHTLRetweetedStatusSourceAllowclick = @"source_allowclick";
NSString *const kHTLRetweetedStatusBizFeature = @"biz_feature";
NSString *const kHTLRetweetedStatusAnnotations = @"annotations";
NSString *const kHTLRetweetedStatusBmiddlePic = @"bmiddle_pic";
NSString *const kHTLRetweetedStatusVisible = @"visible";
NSString *const kHTLRetweetedStatusBizIds = @"biz_ids";
NSString *const kHTLRetweetedStatusInReplyToStatusId = @"in_reply_to_status_id";
NSString *const kHTLRetweetedStatusMid = @"mid";
NSString *const kHTLRetweetedStatusCardid = @"cardid";
NSString *const kHTLRetweetedStatusRepostsCount = @"reposts_count";
NSString *const kHTLRetweetedStatusUserType = @"userType";
NSString *const kHTLRetweetedStatusAttitudesCount = @"attitudes_count";
NSString *const kHTLRetweetedStatusDarwinTags = @"darwin_tags";
NSString *const kHTLRetweetedStatusMlevel = @"mlevel";
NSString *const kHTLRetweetedStatusInReplyToUserId = @"in_reply_to_user_id";
NSString *const kHTLRetweetedStatusPicStatus = @"picStatus";
NSString *const kHTLRetweetedStatusOriginalPic = @"original_pic";


@interface HTLRetweetedStatus ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLRetweetedStatus

@synthesize favorited = _favorited;
@synthesize expireTime = _expireTime;
@synthesize truncated = _truncated;
@synthesize retweetedStatusIdentifier = _retweetedStatusIdentifier;
@synthesize createdAt = _createdAt;
@synthesize extendInfo = _extendInfo;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize isLongText = _isLongText;
@synthesize picUrls = _picUrls;
@synthesize text = _text;
@synthesize idstr = _idstr;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize geo = _geo;
@synthesize pageType = _pageType;
@synthesize user = _user;
@synthesize textTagTips = _textTagTips;
@synthesize commentsCount = _commentsCount;
@synthesize thumbnailPic = _thumbnailPic;
@synthesize source = _source;
@synthesize sourceAllowclick = _sourceAllowclick;
@synthesize bizFeature = _bizFeature;
@synthesize annotations = _annotations;
@synthesize bmiddlePic = _bmiddlePic;
@synthesize visible = _visible;
@synthesize bizIds = _bizIds;
@synthesize inReplyToStatusId = _inReplyToStatusId;
@synthesize mid = _mid;
@synthesize cardid = _cardid;
@synthesize repostsCount = _repostsCount;
@synthesize userType = _userType;
@synthesize attitudesCount = _attitudesCount;
@synthesize darwinTags = _darwinTags;
@synthesize mlevel = _mlevel;
@synthesize inReplyToUserId = _inReplyToUserId;
@synthesize picStatus = _picStatus;
@synthesize originalPic = _originalPic;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.favorited = [[self objectOrNilForKey:kHTLRetweetedStatusFavorited fromDictionary:dict] boolValue];
            self.expireTime = [[self objectOrNilForKey:kHTLRetweetedStatusExpireTime fromDictionary:dict] doubleValue];
            self.truncated = [[self objectOrNilForKey:kHTLRetweetedStatusTruncated fromDictionary:dict] boolValue];
            self.retweetedStatusIdentifier = [[self objectOrNilForKey:kHTLRetweetedStatusId fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kHTLRetweetedStatusCreatedAt fromDictionary:dict];
            self.extendInfo = [HTLExtendInfo modelObjectWithDictionary:[dict objectForKey:kHTLRetweetedStatusExtendInfo]];
            self.inReplyToScreenName = [self objectOrNilForKey:kHTLRetweetedStatusInReplyToScreenName fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kHTLRetweetedStatusIsLongText fromDictionary:dict] boolValue];
    NSObject *receivedHTLPicUrls = [dict objectForKey:kHTLRetweetedStatusPicUrls];
    NSMutableArray *parsedHTLPicUrls = [NSMutableArray array];
    if ([receivedHTLPicUrls isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedHTLPicUrls) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedHTLPicUrls addObject:[HTLPicUrls modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedHTLPicUrls isKindOfClass:[NSDictionary class]]) {
       [parsedHTLPicUrls addObject:[HTLPicUrls modelObjectWithDictionary:(NSDictionary *)receivedHTLPicUrls]];
    }

    self.picUrls = [NSArray arrayWithArray:parsedHTLPicUrls];
            self.text = [self objectOrNilForKey:kHTLRetweetedStatusText fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kHTLRetweetedStatusIdstr fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kHTLRetweetedStatusTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kHTLRetweetedStatusSourceType fromDictionary:dict] doubleValue];
            self.hotWeiboTags = [self objectOrNilForKey:kHTLRetweetedStatusHotWeiboTags fromDictionary:dict];
            self.geo = [self objectOrNilForKey:kHTLRetweetedStatusGeo fromDictionary:dict];
            self.pageType = [[self objectOrNilForKey:kHTLRetweetedStatusPageType fromDictionary:dict] doubleValue];
            self.user = [HTLUser modelObjectWithDictionary:[dict objectForKey:kHTLRetweetedStatusUser]];
            self.textTagTips = [self objectOrNilForKey:kHTLRetweetedStatusTextTagTips fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kHTLRetweetedStatusCommentsCount fromDictionary:dict] doubleValue];
            self.thumbnailPic = [self objectOrNilForKey:kHTLRetweetedStatusThumbnailPic fromDictionary:dict];
            self.source = [self objectOrNilForKey:kHTLRetweetedStatusSource fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kHTLRetweetedStatusSourceAllowclick fromDictionary:dict] doubleValue];
            self.bizFeature = [[self objectOrNilForKey:kHTLRetweetedStatusBizFeature fromDictionary:dict] doubleValue];
    NSObject *receivedHTLAnnotations = [dict objectForKey:kHTLRetweetedStatusAnnotations];
    NSMutableArray *parsedHTLAnnotations = [NSMutableArray array];
    if ([receivedHTLAnnotations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedHTLAnnotations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedHTLAnnotations addObject:[HTLAnnotations modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedHTLAnnotations isKindOfClass:[NSDictionary class]]) {
       [parsedHTLAnnotations addObject:[HTLAnnotations modelObjectWithDictionary:(NSDictionary *)receivedHTLAnnotations]];
    }

    self.annotations = [NSArray arrayWithArray:parsedHTLAnnotations];
            self.bmiddlePic = [self objectOrNilForKey:kHTLRetweetedStatusBmiddlePic fromDictionary:dict];
            self.visible = [HTLVisible modelObjectWithDictionary:[dict objectForKey:kHTLRetweetedStatusVisible]];
            self.bizIds = [self objectOrNilForKey:kHTLRetweetedStatusBizIds fromDictionary:dict];
            self.inReplyToStatusId = [self objectOrNilForKey:kHTLRetweetedStatusInReplyToStatusId fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kHTLRetweetedStatusMid fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kHTLRetweetedStatusCardid fromDictionary:dict];
            self.repostsCount = [[self objectOrNilForKey:kHTLRetweetedStatusRepostsCount fromDictionary:dict] doubleValue];
            self.userType = [[self objectOrNilForKey:kHTLRetweetedStatusUserType fromDictionary:dict] doubleValue];
            self.attitudesCount = [[self objectOrNilForKey:kHTLRetweetedStatusAttitudesCount fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kHTLRetweetedStatusDarwinTags fromDictionary:dict];
            self.mlevel = [[self objectOrNilForKey:kHTLRetweetedStatusMlevel fromDictionary:dict] doubleValue];
            self.inReplyToUserId = [self objectOrNilForKey:kHTLRetweetedStatusInReplyToUserId fromDictionary:dict];
            self.picStatus = [self objectOrNilForKey:kHTLRetweetedStatusPicStatus fromDictionary:dict];
            self.originalPic = [self objectOrNilForKey:kHTLRetweetedStatusOriginalPic fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kHTLRetweetedStatusFavorited];
    [mutableDict setValue:[NSNumber numberWithDouble:self.expireTime] forKey:kHTLRetweetedStatusExpireTime];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kHTLRetweetedStatusTruncated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.retweetedStatusIdentifier] forKey:kHTLRetweetedStatusId];
    [mutableDict setValue:self.createdAt forKey:kHTLRetweetedStatusCreatedAt];
    [mutableDict setValue:[self.extendInfo dictionaryRepresentation] forKey:kHTLRetweetedStatusExtendInfo];
    [mutableDict setValue:self.inReplyToScreenName forKey:kHTLRetweetedStatusInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kHTLRetweetedStatusIsLongText];
    NSMutableArray *tempArrayForPicUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.picUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPicUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPicUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kHTLRetweetedStatusPicUrls];
    [mutableDict setValue:self.text forKey:kHTLRetweetedStatusText];
    [mutableDict setValue:self.idstr forKey:kHTLRetweetedStatusIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kHTLRetweetedStatusTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kHTLRetweetedStatusSourceType];
    NSMutableArray *tempArrayForHotWeiboTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.hotWeiboTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForHotWeiboTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForHotWeiboTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kHTLRetweetedStatusHotWeiboTags];
    [mutableDict setValue:self.geo forKey:kHTLRetweetedStatusGeo];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kHTLRetweetedStatusPageType];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kHTLRetweetedStatusUser];
    NSMutableArray *tempArrayForTextTagTips = [NSMutableArray array];
    for (NSObject *subArrayObject in self.textTagTips) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTextTagTips addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTextTagTips addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kHTLRetweetedStatusTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kHTLRetweetedStatusCommentsCount];
    [mutableDict setValue:self.thumbnailPic forKey:kHTLRetweetedStatusThumbnailPic];
    [mutableDict setValue:self.source forKey:kHTLRetweetedStatusSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kHTLRetweetedStatusSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kHTLRetweetedStatusBizFeature];
    NSMutableArray *tempArrayForAnnotations = [NSMutableArray array];
    for (NSObject *subArrayObject in self.annotations) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAnnotations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAnnotations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kHTLRetweetedStatusAnnotations];
    [mutableDict setValue:self.bmiddlePic forKey:kHTLRetweetedStatusBmiddlePic];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kHTLRetweetedStatusVisible];
    NSMutableArray *tempArrayForBizIds = [NSMutableArray array];
    for (NSObject *subArrayObject in self.bizIds) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBizIds addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBizIds addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBizIds] forKey:kHTLRetweetedStatusBizIds];
    [mutableDict setValue:self.inReplyToStatusId forKey:kHTLRetweetedStatusInReplyToStatusId];
    [mutableDict setValue:self.mid forKey:kHTLRetweetedStatusMid];
    [mutableDict setValue:self.cardid forKey:kHTLRetweetedStatusCardid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kHTLRetweetedStatusRepostsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kHTLRetweetedStatusUserType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kHTLRetweetedStatusAttitudesCount];
    NSMutableArray *tempArrayForDarwinTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.darwinTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDarwinTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDarwinTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kHTLRetweetedStatusDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kHTLRetweetedStatusMlevel];
    [mutableDict setValue:self.inReplyToUserId forKey:kHTLRetweetedStatusInReplyToUserId];
    [mutableDict setValue:self.picStatus forKey:kHTLRetweetedStatusPicStatus];
    [mutableDict setValue:self.originalPic forKey:kHTLRetweetedStatusOriginalPic];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.favorited = [aDecoder decodeBoolForKey:kHTLRetweetedStatusFavorited];
    self.expireTime = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusExpireTime];
    self.truncated = [aDecoder decodeBoolForKey:kHTLRetweetedStatusTruncated];
    self.retweetedStatusIdentifier = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusId];
    self.createdAt = [aDecoder decodeObjectForKey:kHTLRetweetedStatusCreatedAt];
    self.extendInfo = [aDecoder decodeObjectForKey:kHTLRetweetedStatusExtendInfo];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kHTLRetweetedStatusInReplyToScreenName];
    self.isLongText = [aDecoder decodeBoolForKey:kHTLRetweetedStatusIsLongText];
    self.picUrls = [aDecoder decodeObjectForKey:kHTLRetweetedStatusPicUrls];
    self.text = [aDecoder decodeObjectForKey:kHTLRetweetedStatusText];
    self.idstr = [aDecoder decodeObjectForKey:kHTLRetweetedStatusIdstr];
    self.textLength = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusSourceType];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kHTLRetweetedStatusHotWeiboTags];
    self.geo = [aDecoder decodeObjectForKey:kHTLRetweetedStatusGeo];
    self.pageType = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusPageType];
    self.user = [aDecoder decodeObjectForKey:kHTLRetweetedStatusUser];
    self.textTagTips = [aDecoder decodeObjectForKey:kHTLRetweetedStatusTextTagTips];
    self.commentsCount = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusCommentsCount];
    self.thumbnailPic = [aDecoder decodeObjectForKey:kHTLRetweetedStatusThumbnailPic];
    self.source = [aDecoder decodeObjectForKey:kHTLRetweetedStatusSource];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusSourceAllowclick];
    self.bizFeature = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusBizFeature];
    self.annotations = [aDecoder decodeObjectForKey:kHTLRetweetedStatusAnnotations];
    self.bmiddlePic = [aDecoder decodeObjectForKey:kHTLRetweetedStatusBmiddlePic];
    self.visible = [aDecoder decodeObjectForKey:kHTLRetweetedStatusVisible];
    self.bizIds = [aDecoder decodeObjectForKey:kHTLRetweetedStatusBizIds];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kHTLRetweetedStatusInReplyToStatusId];
    self.mid = [aDecoder decodeObjectForKey:kHTLRetweetedStatusMid];
    self.cardid = [aDecoder decodeObjectForKey:kHTLRetweetedStatusCardid];
    self.repostsCount = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusRepostsCount];
    self.userType = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusUserType];
    self.attitudesCount = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusAttitudesCount];
    self.darwinTags = [aDecoder decodeObjectForKey:kHTLRetweetedStatusDarwinTags];
    self.mlevel = [aDecoder decodeDoubleForKey:kHTLRetweetedStatusMlevel];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kHTLRetweetedStatusInReplyToUserId];
    self.picStatus = [aDecoder decodeObjectForKey:kHTLRetweetedStatusPicStatus];
    self.originalPic = [aDecoder decodeObjectForKey:kHTLRetweetedStatusOriginalPic];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_favorited forKey:kHTLRetweetedStatusFavorited];
    [aCoder encodeDouble:_expireTime forKey:kHTLRetweetedStatusExpireTime];
    [aCoder encodeBool:_truncated forKey:kHTLRetweetedStatusTruncated];
    [aCoder encodeDouble:_retweetedStatusIdentifier forKey:kHTLRetweetedStatusId];
    [aCoder encodeObject:_createdAt forKey:kHTLRetweetedStatusCreatedAt];
    [aCoder encodeObject:_extendInfo forKey:kHTLRetweetedStatusExtendInfo];
    [aCoder encodeObject:_inReplyToScreenName forKey:kHTLRetweetedStatusInReplyToScreenName];
    [aCoder encodeBool:_isLongText forKey:kHTLRetweetedStatusIsLongText];
    [aCoder encodeObject:_picUrls forKey:kHTLRetweetedStatusPicUrls];
    [aCoder encodeObject:_text forKey:kHTLRetweetedStatusText];
    [aCoder encodeObject:_idstr forKey:kHTLRetweetedStatusIdstr];
    [aCoder encodeDouble:_textLength forKey:kHTLRetweetedStatusTextLength];
    [aCoder encodeDouble:_sourceType forKey:kHTLRetweetedStatusSourceType];
    [aCoder encodeObject:_hotWeiboTags forKey:kHTLRetweetedStatusHotWeiboTags];
    [aCoder encodeObject:_geo forKey:kHTLRetweetedStatusGeo];
    [aCoder encodeDouble:_pageType forKey:kHTLRetweetedStatusPageType];
    [aCoder encodeObject:_user forKey:kHTLRetweetedStatusUser];
    [aCoder encodeObject:_textTagTips forKey:kHTLRetweetedStatusTextTagTips];
    [aCoder encodeDouble:_commentsCount forKey:kHTLRetweetedStatusCommentsCount];
    [aCoder encodeObject:_thumbnailPic forKey:kHTLRetweetedStatusThumbnailPic];
    [aCoder encodeObject:_source forKey:kHTLRetweetedStatusSource];
    [aCoder encodeDouble:_sourceAllowclick forKey:kHTLRetweetedStatusSourceAllowclick];
    [aCoder encodeDouble:_bizFeature forKey:kHTLRetweetedStatusBizFeature];
    [aCoder encodeObject:_annotations forKey:kHTLRetweetedStatusAnnotations];
    [aCoder encodeObject:_bmiddlePic forKey:kHTLRetweetedStatusBmiddlePic];
    [aCoder encodeObject:_visible forKey:kHTLRetweetedStatusVisible];
    [aCoder encodeObject:_bizIds forKey:kHTLRetweetedStatusBizIds];
    [aCoder encodeObject:_inReplyToStatusId forKey:kHTLRetweetedStatusInReplyToStatusId];
    [aCoder encodeObject:_mid forKey:kHTLRetweetedStatusMid];
    [aCoder encodeObject:_cardid forKey:kHTLRetweetedStatusCardid];
    [aCoder encodeDouble:_repostsCount forKey:kHTLRetweetedStatusRepostsCount];
    [aCoder encodeDouble:_userType forKey:kHTLRetweetedStatusUserType];
    [aCoder encodeDouble:_attitudesCount forKey:kHTLRetweetedStatusAttitudesCount];
    [aCoder encodeObject:_darwinTags forKey:kHTLRetweetedStatusDarwinTags];
    [aCoder encodeDouble:_mlevel forKey:kHTLRetweetedStatusMlevel];
    [aCoder encodeObject:_inReplyToUserId forKey:kHTLRetweetedStatusInReplyToUserId];
    [aCoder encodeObject:_picStatus forKey:kHTLRetweetedStatusPicStatus];
    [aCoder encodeObject:_originalPic forKey:kHTLRetweetedStatusOriginalPic];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLRetweetedStatus *copy = [[HTLRetweetedStatus alloc] init];
    
    if (copy) {

        copy.favorited = self.favorited;
        copy.expireTime = self.expireTime;
        copy.truncated = self.truncated;
        copy.retweetedStatusIdentifier = self.retweetedStatusIdentifier;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.extendInfo = [self.extendInfo copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.geo = [self.geo copyWithZone:zone];
        copy.pageType = self.pageType;
        copy.user = [self.user copyWithZone:zone];
        copy.textTagTips = [self.textTagTips copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.thumbnailPic = [self.thumbnailPic copyWithZone:zone];
        copy.source = [self.source copyWithZone:zone];
        copy.sourceAllowclick = self.sourceAllowclick;
        copy.bizFeature = self.bizFeature;
        copy.annotations = [self.annotations copyWithZone:zone];
        copy.bmiddlePic = [self.bmiddlePic copyWithZone:zone];
        copy.visible = [self.visible copyWithZone:zone];
        copy.bizIds = [self.bizIds copyWithZone:zone];
        copy.inReplyToStatusId = [self.inReplyToStatusId copyWithZone:zone];
        copy.mid = [self.mid copyWithZone:zone];
        copy.cardid = [self.cardid copyWithZone:zone];
        copy.repostsCount = self.repostsCount;
        copy.userType = self.userType;
        copy.attitudesCount = self.attitudesCount;
        copy.darwinTags = [self.darwinTags copyWithZone:zone];
        copy.mlevel = self.mlevel;
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.picStatus = [self.picStatus copyWithZone:zone];
        copy.originalPic = [self.originalPic copyWithZone:zone];
    }
    
    return copy;
}


@end
