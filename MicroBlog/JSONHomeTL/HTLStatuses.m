//
//  HTLStatuses.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLStatuses.h"
#import "HTLPicUrls.h"
#import "HTLRetweetedStatus.h"
#import "HTLUser.h"
#import "HTLAnnotations.h"
#import "HTLVisible.h"


NSString *const kHTLStatusesFavorited = @"favorited";
NSString *const kHTLStatusesTruncated = @"truncated";
NSString *const kHTLStatusesId = @"id";
NSString *const kHTLStatusesCreatedAt = @"created_at";
NSString *const kHTLStatusesInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kHTLStatusesIsLongText = @"isLongText";
NSString *const kHTLStatusesPicUrls = @"pic_urls";
NSString *const kHTLStatusesText = @"text";
NSString *const kHTLStatusesIdstr = @"idstr";
NSString *const kHTLStatusesTextLength = @"textLength";
NSString *const kHTLStatusesSourceType = @"source_type";
NSString *const kHTLStatusesHotWeiboTags = @"hot_weibo_tags";
NSString *const kHTLStatusesPageType = @"page_type";
NSString *const kHTLStatusesGeo = @"geo";
NSString *const kHTLStatusesRetweetedStatus = @"retweeted_status";
NSString *const kHTLStatusesUser = @"user";
NSString *const kHTLStatusesTextTagTips = @"text_tag_tips";
NSString *const kHTLStatusesCommentsCount = @"comments_count";
NSString *const kHTLStatusesThumbnailPic = @"thumbnail_pic";
NSString *const kHTLStatusesSource = @"source";
NSString *const kHTLStatusesSourceAllowclick = @"source_allowclick";
NSString *const kHTLStatusesBizFeature = @"biz_feature";
NSString *const kHTLStatusesAnnotations = @"annotations";
NSString *const kHTLStatusesBmiddlePic = @"bmiddle_pic";
NSString *const kHTLStatusesVisible = @"visible";
NSString *const kHTLStatusesBizIds = @"biz_ids";
NSString *const kHTLStatusesInReplyToStatusId = @"in_reply_to_status_id";
NSString *const kHTLStatusesMid = @"mid";
NSString *const kHTLStatusesCardid = @"cardid";
NSString *const kHTLStatusesRepostsCount = @"reposts_count";
NSString *const kHTLStatusesUserType = @"userType";
NSString *const kHTLStatusesAttitudesCount = @"attitudes_count";
NSString *const kHTLStatusesDarwinTags = @"darwin_tags";
NSString *const kHTLStatusesMlevel = @"mlevel";
NSString *const kHTLStatusesRid = @"rid";
NSString *const kHTLStatusesInReplyToUserId = @"in_reply_to_user_id";
NSString *const kHTLStatusesPid = @"pid";
NSString *const kHTLStatusesOriginalPic = @"original_pic";


@interface HTLStatuses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLStatuses

@synthesize favorited = _favorited;
@synthesize truncated = _truncated;
@synthesize statusesIdentifier = _statusesIdentifier;
@synthesize createdAt = _createdAt;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize isLongText = _isLongText;
@synthesize picUrls = _picUrls;
@synthesize text = _text;
@synthesize idstr = _idstr;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize pageType = _pageType;
@synthesize geo = _geo;
@synthesize retweetedStatus = _retweetedStatus;
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
@synthesize rid = _rid;
@synthesize inReplyToUserId = _inReplyToUserId;
@synthesize pid = _pid;
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
            self.favorited = [[self objectOrNilForKey:kHTLStatusesFavorited fromDictionary:dict] boolValue];
            self.truncated = [[self objectOrNilForKey:kHTLStatusesTruncated fromDictionary:dict] boolValue];
            self.statusesIdentifier = [[self objectOrNilForKey:kHTLStatusesId fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kHTLStatusesCreatedAt fromDictionary:dict];
            self.inReplyToScreenName = [self objectOrNilForKey:kHTLStatusesInReplyToScreenName fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kHTLStatusesIsLongText fromDictionary:dict] boolValue];
    NSObject *receivedHTLPicUrls = [dict objectForKey:kHTLStatusesPicUrls];
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
            self.text = [self objectOrNilForKey:kHTLStatusesText fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kHTLStatusesIdstr fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kHTLStatusesTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kHTLStatusesSourceType fromDictionary:dict] doubleValue];
            self.hotWeiboTags = [self objectOrNilForKey:kHTLStatusesHotWeiboTags fromDictionary:dict];
            self.pageType = [[self objectOrNilForKey:kHTLStatusesPageType fromDictionary:dict] doubleValue];
            self.geo = [self objectOrNilForKey:kHTLStatusesGeo fromDictionary:dict];
            self.retweetedStatus = [HTLRetweetedStatus modelObjectWithDictionary:[dict objectForKey:kHTLStatusesRetweetedStatus]];
            self.user = [HTLUser modelObjectWithDictionary:[dict objectForKey:kHTLStatusesUser]];
            self.textTagTips = [self objectOrNilForKey:kHTLStatusesTextTagTips fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kHTLStatusesCommentsCount fromDictionary:dict] doubleValue];
            self.thumbnailPic = [self objectOrNilForKey:kHTLStatusesThumbnailPic fromDictionary:dict];
            self.source = [self objectOrNilForKey:kHTLStatusesSource fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kHTLStatusesSourceAllowclick fromDictionary:dict] doubleValue];
            self.bizFeature = [[self objectOrNilForKey:kHTLStatusesBizFeature fromDictionary:dict] doubleValue];
    NSObject *receivedHTLAnnotations = [dict objectForKey:kHTLStatusesAnnotations];
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
            self.bmiddlePic = [self objectOrNilForKey:kHTLStatusesBmiddlePic fromDictionary:dict];
            self.visible = [HTLVisible modelObjectWithDictionary:[dict objectForKey:kHTLStatusesVisible]];
            self.bizIds = [self objectOrNilForKey:kHTLStatusesBizIds fromDictionary:dict];
            self.inReplyToStatusId = [self objectOrNilForKey:kHTLStatusesInReplyToStatusId fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kHTLStatusesMid fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kHTLStatusesCardid fromDictionary:dict];
            self.repostsCount = [[self objectOrNilForKey:kHTLStatusesRepostsCount fromDictionary:dict] doubleValue];
            self.userType = [[self objectOrNilForKey:kHTLStatusesUserType fromDictionary:dict] doubleValue];
            self.attitudesCount = [[self objectOrNilForKey:kHTLStatusesAttitudesCount fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kHTLStatusesDarwinTags fromDictionary:dict];
            self.mlevel = [[self objectOrNilForKey:kHTLStatusesMlevel fromDictionary:dict] doubleValue];
            self.rid = [self objectOrNilForKey:kHTLStatusesRid fromDictionary:dict];
            self.inReplyToUserId = [self objectOrNilForKey:kHTLStatusesInReplyToUserId fromDictionary:dict];
            self.pid = [[self objectOrNilForKey:kHTLStatusesPid fromDictionary:dict] doubleValue];
            self.originalPic = [self objectOrNilForKey:kHTLStatusesOriginalPic fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kHTLStatusesFavorited];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kHTLStatusesTruncated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesIdentifier] forKey:kHTLStatusesId];
    [mutableDict setValue:self.createdAt forKey:kHTLStatusesCreatedAt];
    [mutableDict setValue:self.inReplyToScreenName forKey:kHTLStatusesInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kHTLStatusesIsLongText];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kHTLStatusesPicUrls];
    [mutableDict setValue:self.text forKey:kHTLStatusesText];
    [mutableDict setValue:self.idstr forKey:kHTLStatusesIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kHTLStatusesTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kHTLStatusesSourceType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kHTLStatusesHotWeiboTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kHTLStatusesPageType];
    [mutableDict setValue:self.geo forKey:kHTLStatusesGeo];
    [mutableDict setValue:[self.retweetedStatus dictionaryRepresentation] forKey:kHTLStatusesRetweetedStatus];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kHTLStatusesUser];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kHTLStatusesTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kHTLStatusesCommentsCount];
    [mutableDict setValue:self.thumbnailPic forKey:kHTLStatusesThumbnailPic];
    [mutableDict setValue:self.source forKey:kHTLStatusesSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kHTLStatusesSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kHTLStatusesBizFeature];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kHTLStatusesAnnotations];
    [mutableDict setValue:self.bmiddlePic forKey:kHTLStatusesBmiddlePic];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kHTLStatusesVisible];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBizIds] forKey:kHTLStatusesBizIds];
    [mutableDict setValue:self.inReplyToStatusId forKey:kHTLStatusesInReplyToStatusId];
    [mutableDict setValue:self.mid forKey:kHTLStatusesMid];
    [mutableDict setValue:self.cardid forKey:kHTLStatusesCardid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kHTLStatusesRepostsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kHTLStatusesUserType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kHTLStatusesAttitudesCount];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kHTLStatusesDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kHTLStatusesMlevel];
    [mutableDict setValue:self.rid forKey:kHTLStatusesRid];
    [mutableDict setValue:self.inReplyToUserId forKey:kHTLStatusesInReplyToUserId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pid] forKey:kHTLStatusesPid];
    [mutableDict setValue:self.originalPic forKey:kHTLStatusesOriginalPic];

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

    self.favorited = [aDecoder decodeBoolForKey:kHTLStatusesFavorited];
    self.truncated = [aDecoder decodeBoolForKey:kHTLStatusesTruncated];
    self.statusesIdentifier = [aDecoder decodeDoubleForKey:kHTLStatusesId];
    self.createdAt = [aDecoder decodeObjectForKey:kHTLStatusesCreatedAt];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kHTLStatusesInReplyToScreenName];
    self.isLongText = [aDecoder decodeBoolForKey:kHTLStatusesIsLongText];
    self.picUrls = [aDecoder decodeObjectForKey:kHTLStatusesPicUrls];
    self.text = [aDecoder decodeObjectForKey:kHTLStatusesText];
    self.idstr = [aDecoder decodeObjectForKey:kHTLStatusesIdstr];
    self.textLength = [aDecoder decodeDoubleForKey:kHTLStatusesTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kHTLStatusesSourceType];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kHTLStatusesHotWeiboTags];
    self.pageType = [aDecoder decodeDoubleForKey:kHTLStatusesPageType];
    self.geo = [aDecoder decodeObjectForKey:kHTLStatusesGeo];
    self.retweetedStatus = [aDecoder decodeObjectForKey:kHTLStatusesRetweetedStatus];
    self.user = [aDecoder decodeObjectForKey:kHTLStatusesUser];
    self.textTagTips = [aDecoder decodeObjectForKey:kHTLStatusesTextTagTips];
    self.commentsCount = [aDecoder decodeDoubleForKey:kHTLStatusesCommentsCount];
    self.thumbnailPic = [aDecoder decodeObjectForKey:kHTLStatusesThumbnailPic];
    self.source = [aDecoder decodeObjectForKey:kHTLStatusesSource];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kHTLStatusesSourceAllowclick];
    self.bizFeature = [aDecoder decodeDoubleForKey:kHTLStatusesBizFeature];
    self.annotations = [aDecoder decodeObjectForKey:kHTLStatusesAnnotations];
    self.bmiddlePic = [aDecoder decodeObjectForKey:kHTLStatusesBmiddlePic];
    self.visible = [aDecoder decodeObjectForKey:kHTLStatusesVisible];
    self.bizIds = [aDecoder decodeObjectForKey:kHTLStatusesBizIds];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kHTLStatusesInReplyToStatusId];
    self.mid = [aDecoder decodeObjectForKey:kHTLStatusesMid];
    self.cardid = [aDecoder decodeObjectForKey:kHTLStatusesCardid];
    self.repostsCount = [aDecoder decodeDoubleForKey:kHTLStatusesRepostsCount];
    self.userType = [aDecoder decodeDoubleForKey:kHTLStatusesUserType];
    self.attitudesCount = [aDecoder decodeDoubleForKey:kHTLStatusesAttitudesCount];
    self.darwinTags = [aDecoder decodeObjectForKey:kHTLStatusesDarwinTags];
    self.mlevel = [aDecoder decodeDoubleForKey:kHTLStatusesMlevel];
    self.rid = [aDecoder decodeObjectForKey:kHTLStatusesRid];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kHTLStatusesInReplyToUserId];
    self.pid = [aDecoder decodeDoubleForKey:kHTLStatusesPid];
    self.originalPic = [aDecoder decodeObjectForKey:kHTLStatusesOriginalPic];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_favorited forKey:kHTLStatusesFavorited];
    [aCoder encodeBool:_truncated forKey:kHTLStatusesTruncated];
    [aCoder encodeDouble:_statusesIdentifier forKey:kHTLStatusesId];
    [aCoder encodeObject:_createdAt forKey:kHTLStatusesCreatedAt];
    [aCoder encodeObject:_inReplyToScreenName forKey:kHTLStatusesInReplyToScreenName];
    [aCoder encodeBool:_isLongText forKey:kHTLStatusesIsLongText];
    [aCoder encodeObject:_picUrls forKey:kHTLStatusesPicUrls];
    [aCoder encodeObject:_text forKey:kHTLStatusesText];
    [aCoder encodeObject:_idstr forKey:kHTLStatusesIdstr];
    [aCoder encodeDouble:_textLength forKey:kHTLStatusesTextLength];
    [aCoder encodeDouble:_sourceType forKey:kHTLStatusesSourceType];
    [aCoder encodeObject:_hotWeiboTags forKey:kHTLStatusesHotWeiboTags];
    [aCoder encodeDouble:_pageType forKey:kHTLStatusesPageType];
    [aCoder encodeObject:_geo forKey:kHTLStatusesGeo];
    [aCoder encodeObject:_retweetedStatus forKey:kHTLStatusesRetweetedStatus];
    [aCoder encodeObject:_user forKey:kHTLStatusesUser];
    [aCoder encodeObject:_textTagTips forKey:kHTLStatusesTextTagTips];
    [aCoder encodeDouble:_commentsCount forKey:kHTLStatusesCommentsCount];
    [aCoder encodeObject:_thumbnailPic forKey:kHTLStatusesThumbnailPic];
    [aCoder encodeObject:_source forKey:kHTLStatusesSource];
    [aCoder encodeDouble:_sourceAllowclick forKey:kHTLStatusesSourceAllowclick];
    [aCoder encodeDouble:_bizFeature forKey:kHTLStatusesBizFeature];
    [aCoder encodeObject:_annotations forKey:kHTLStatusesAnnotations];
    [aCoder encodeObject:_bmiddlePic forKey:kHTLStatusesBmiddlePic];
    [aCoder encodeObject:_visible forKey:kHTLStatusesVisible];
    [aCoder encodeObject:_bizIds forKey:kHTLStatusesBizIds];
    [aCoder encodeObject:_inReplyToStatusId forKey:kHTLStatusesInReplyToStatusId];
    [aCoder encodeObject:_mid forKey:kHTLStatusesMid];
    [aCoder encodeObject:_cardid forKey:kHTLStatusesCardid];
    [aCoder encodeDouble:_repostsCount forKey:kHTLStatusesRepostsCount];
    [aCoder encodeDouble:_userType forKey:kHTLStatusesUserType];
    [aCoder encodeDouble:_attitudesCount forKey:kHTLStatusesAttitudesCount];
    [aCoder encodeObject:_darwinTags forKey:kHTLStatusesDarwinTags];
    [aCoder encodeDouble:_mlevel forKey:kHTLStatusesMlevel];
    [aCoder encodeObject:_rid forKey:kHTLStatusesRid];
    [aCoder encodeObject:_inReplyToUserId forKey:kHTLStatusesInReplyToUserId];
    [aCoder encodeDouble:_pid forKey:kHTLStatusesPid];
    [aCoder encodeObject:_originalPic forKey:kHTLStatusesOriginalPic];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLStatuses *copy = [[HTLStatuses alloc] init];
    
    if (copy) {

        copy.favorited = self.favorited;
        copy.truncated = self.truncated;
        copy.statusesIdentifier = self.statusesIdentifier;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.pageType = self.pageType;
        copy.geo = [self.geo copyWithZone:zone];
        copy.retweetedStatus = [self.retweetedStatus copyWithZone:zone];
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
        copy.rid = [self.rid copyWithZone:zone];
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.pid = self.pid;
        copy.originalPic = [self.originalPic copyWithZone:zone];
    }
    
    return copy;
}


@end
