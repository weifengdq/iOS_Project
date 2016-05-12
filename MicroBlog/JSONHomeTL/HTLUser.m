//
//  HTLUser.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLUser.h"


NSString *const kHTLUserCoverImagePhone = @"cover_image_phone";
NSString *const kHTLUserId = @"id";
NSString *const kHTLUserBiFollowersCount = @"bi_followers_count";
NSString *const kHTLUserUrank = @"urank";
NSString *const kHTLUserProfileImageUrl = @"profile_image_url";
NSString *const kHTLUserClass = @"class";
NSString *const kHTLUserVerifiedContactEmail = @"verified_contact_email";
NSString *const kHTLUserProvince = @"province";
NSString *const kHTLUserVerified = @"verified";
NSString *const kHTLUserGeoEnabled = @"geo_enabled";
NSString *const kHTLUserUrl = @"url";
NSString *const kHTLUserFollowMe = @"follow_me";
NSString *const kHTLUserStatusesCount = @"statuses_count";
NSString *const kHTLUserDescription = @"description";
NSString *const kHTLUserFollowersCount = @"followers_count";
NSString *const kHTLUserVerifiedContactMobile = @"verified_contact_mobile";
NSString *const kHTLUserLocation = @"location";
NSString *const kHTLUserMbrank = @"mbrank";
NSString *const kHTLUserAvatarLarge = @"avatar_large";
NSString *const kHTLUserStar = @"star";
NSString *const kHTLUserVerifiedTrade = @"verified_trade";
NSString *const kHTLUserWeihao = @"weihao";
NSString *const kHTLUserCoverImage = @"cover_image";
NSString *const kHTLUserOnlineStatus = @"online_status";
NSString *const kHTLUserProfileUrl = @"profile_url";
NSString *const kHTLUserVerifiedContactName = @"verified_contact_name";
NSString *const kHTLUserVerifiedSourceUrl = @"verified_source_url";
NSString *const kHTLUserScreenName = @"screen_name";
NSString *const kHTLUserPagefriendsCount = @"pagefriends_count";
NSString *const kHTLUserVerifiedReason = @"verified_reason";
NSString *const kHTLUserName = @"name";
NSString *const kHTLUserFriendsCount = @"friends_count";
NSString *const kHTLUserMbtype = @"mbtype";
NSString *const kHTLUserBlockApp = @"block_app";
NSString *const kHTLUserAvatarHd = @"avatar_hd";
NSString *const kHTLUserCreditScore = @"credit_score";
NSString *const kHTLUserRemark = @"remark";
NSString *const kHTLUserCreatedAt = @"created_at";
NSString *const kHTLUserBlockWord = @"block_word";
NSString *const kHTLUserAllowAllActMsg = @"allow_all_act_msg";
NSString *const kHTLUserVerifiedState = @"verified_state";
NSString *const kHTLUserDianping = @"dianping";
NSString *const kHTLUserDomain = @"domain";
NSString *const kHTLUserVerifiedReasonModified = @"verified_reason_modified";
NSString *const kHTLUserCardid = @"cardid";
NSString *const kHTLUserAllowAllComment = @"allow_all_comment";
NSString *const kHTLUserVerifiedLevel = @"verified_level";
NSString *const kHTLUserVerifiedReasonUrl = @"verified_reason_url";
NSString *const kHTLUserGender = @"gender";
NSString *const kHTLUserFavouritesCount = @"favourites_count";
NSString *const kHTLUserIdstr = @"idstr";
NSString *const kHTLUserVerifiedType = @"verified_type";
NSString *const kHTLUserCity = @"city";
NSString *const kHTLUserVerifiedSource = @"verified_source";
NSString *const kHTLUserUserAbility = @"user_ability";
NSString *const kHTLUserLang = @"lang";
NSString *const kHTLUserPtype = @"ptype";
NSString *const kHTLUserFollowing = @"following";


@interface HTLUser ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLUser

@synthesize coverImagePhone = _coverImagePhone;
@synthesize userIdentifier = _userIdentifier;
@synthesize biFollowersCount = _biFollowersCount;
@synthesize urank = _urank;
@synthesize profileImageUrl = _profileImageUrl;
@synthesize classProperty = _classProperty;
@synthesize verifiedContactEmail = _verifiedContactEmail;
@synthesize province = _province;
@synthesize verified = _verified;
@synthesize geoEnabled = _geoEnabled;
@synthesize url = _url;
@synthesize followMe = _followMe;
@synthesize statusesCount = _statusesCount;
@synthesize userDescription = _userDescription;
@synthesize followersCount = _followersCount;
@synthesize verifiedContactMobile = _verifiedContactMobile;
@synthesize location = _location;
@synthesize mbrank = _mbrank;
@synthesize avatarLarge = _avatarLarge;
@synthesize star = _star;
@synthesize verifiedTrade = _verifiedTrade;
@synthesize weihao = _weihao;
@synthesize coverImage = _coverImage;
@synthesize onlineStatus = _onlineStatus;
@synthesize profileUrl = _profileUrl;
@synthesize verifiedContactName = _verifiedContactName;
@synthesize verifiedSourceUrl = _verifiedSourceUrl;
@synthesize screenName = _screenName;
@synthesize pagefriendsCount = _pagefriendsCount;
@synthesize verifiedReason = _verifiedReason;
@synthesize name = _name;
@synthesize friendsCount = _friendsCount;
@synthesize mbtype = _mbtype;
@synthesize blockApp = _blockApp;
@synthesize avatarHd = _avatarHd;
@synthesize creditScore = _creditScore;
@synthesize remark = _remark;
@synthesize createdAt = _createdAt;
@synthesize blockWord = _blockWord;
@synthesize allowAllActMsg = _allowAllActMsg;
@synthesize verifiedState = _verifiedState;
@synthesize dianping = _dianping;
@synthesize domain = _domain;
@synthesize verifiedReasonModified = _verifiedReasonModified;
@synthesize cardid = _cardid;
@synthesize allowAllComment = _allowAllComment;
@synthesize verifiedLevel = _verifiedLevel;
@synthesize verifiedReasonUrl = _verifiedReasonUrl;
@synthesize gender = _gender;
@synthesize favouritesCount = _favouritesCount;
@synthesize idstr = _idstr;
@synthesize verifiedType = _verifiedType;
@synthesize city = _city;
@synthesize verifiedSource = _verifiedSource;
@synthesize userAbility = _userAbility;
@synthesize lang = _lang;
@synthesize ptype = _ptype;
@synthesize following = _following;


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
            self.coverImagePhone = [self objectOrNilForKey:kHTLUserCoverImagePhone fromDictionary:dict];
            self.userIdentifier = [[self objectOrNilForKey:kHTLUserId fromDictionary:dict] doubleValue];
            self.biFollowersCount = [[self objectOrNilForKey:kHTLUserBiFollowersCount fromDictionary:dict] doubleValue];
            self.urank = [[self objectOrNilForKey:kHTLUserUrank fromDictionary:dict] doubleValue];
            self.profileImageUrl = [self objectOrNilForKey:kHTLUserProfileImageUrl fromDictionary:dict];
            self.classProperty = [[self objectOrNilForKey:kHTLUserClass fromDictionary:dict] doubleValue];
            self.verifiedContactEmail = [self objectOrNilForKey:kHTLUserVerifiedContactEmail fromDictionary:dict];
            self.province = [self objectOrNilForKey:kHTLUserProvince fromDictionary:dict];
            self.verified = [[self objectOrNilForKey:kHTLUserVerified fromDictionary:dict] boolValue];
            self.geoEnabled = [[self objectOrNilForKey:kHTLUserGeoEnabled fromDictionary:dict] boolValue];
            self.url = [self objectOrNilForKey:kHTLUserUrl fromDictionary:dict];
            self.followMe = [[self objectOrNilForKey:kHTLUserFollowMe fromDictionary:dict] boolValue];
            self.statusesCount = [[self objectOrNilForKey:kHTLUserStatusesCount fromDictionary:dict] doubleValue];
            self.userDescription = [self objectOrNilForKey:kHTLUserDescription fromDictionary:dict];
            self.followersCount = [[self objectOrNilForKey:kHTLUserFollowersCount fromDictionary:dict] doubleValue];
            self.verifiedContactMobile = [self objectOrNilForKey:kHTLUserVerifiedContactMobile fromDictionary:dict];
            self.location = [self objectOrNilForKey:kHTLUserLocation fromDictionary:dict];
            self.mbrank = [[self objectOrNilForKey:kHTLUserMbrank fromDictionary:dict] doubleValue];
            self.avatarLarge = [self objectOrNilForKey:kHTLUserAvatarLarge fromDictionary:dict];
            self.star = [[self objectOrNilForKey:kHTLUserStar fromDictionary:dict] doubleValue];
            self.verifiedTrade = [self objectOrNilForKey:kHTLUserVerifiedTrade fromDictionary:dict];
            self.weihao = [self objectOrNilForKey:kHTLUserWeihao fromDictionary:dict];
            self.coverImage = [self objectOrNilForKey:kHTLUserCoverImage fromDictionary:dict];
            self.onlineStatus = [[self objectOrNilForKey:kHTLUserOnlineStatus fromDictionary:dict] doubleValue];
            self.profileUrl = [self objectOrNilForKey:kHTLUserProfileUrl fromDictionary:dict];
            self.verifiedContactName = [self objectOrNilForKey:kHTLUserVerifiedContactName fromDictionary:dict];
            self.verifiedSourceUrl = [self objectOrNilForKey:kHTLUserVerifiedSourceUrl fromDictionary:dict];
            self.screenName = [self objectOrNilForKey:kHTLUserScreenName fromDictionary:dict];
            self.pagefriendsCount = [[self objectOrNilForKey:kHTLUserPagefriendsCount fromDictionary:dict] doubleValue];
            self.verifiedReason = [self objectOrNilForKey:kHTLUserVerifiedReason fromDictionary:dict];
            self.name = [self objectOrNilForKey:kHTLUserName fromDictionary:dict];
            self.friendsCount = [[self objectOrNilForKey:kHTLUserFriendsCount fromDictionary:dict] doubleValue];
            self.mbtype = [[self objectOrNilForKey:kHTLUserMbtype fromDictionary:dict] doubleValue];
            self.blockApp = [[self objectOrNilForKey:kHTLUserBlockApp fromDictionary:dict] doubleValue];
            self.avatarHd = [self objectOrNilForKey:kHTLUserAvatarHd fromDictionary:dict];
            self.creditScore = [[self objectOrNilForKey:kHTLUserCreditScore fromDictionary:dict] doubleValue];
            self.remark = [self objectOrNilForKey:kHTLUserRemark fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kHTLUserCreatedAt fromDictionary:dict];
            self.blockWord = [[self objectOrNilForKey:kHTLUserBlockWord fromDictionary:dict] doubleValue];
            self.allowAllActMsg = [[self objectOrNilForKey:kHTLUserAllowAllActMsg fromDictionary:dict] boolValue];
            self.verifiedState = [[self objectOrNilForKey:kHTLUserVerifiedState fromDictionary:dict] doubleValue];
            self.dianping = [self objectOrNilForKey:kHTLUserDianping fromDictionary:dict];
            self.domain = [self objectOrNilForKey:kHTLUserDomain fromDictionary:dict];
            self.verifiedReasonModified = [self objectOrNilForKey:kHTLUserVerifiedReasonModified fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kHTLUserCardid fromDictionary:dict];
            self.allowAllComment = [[self objectOrNilForKey:kHTLUserAllowAllComment fromDictionary:dict] boolValue];
            self.verifiedLevel = [[self objectOrNilForKey:kHTLUserVerifiedLevel fromDictionary:dict] doubleValue];
            self.verifiedReasonUrl = [self objectOrNilForKey:kHTLUserVerifiedReasonUrl fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kHTLUserGender fromDictionary:dict];
            self.favouritesCount = [[self objectOrNilForKey:kHTLUserFavouritesCount fromDictionary:dict] doubleValue];
            self.idstr = [self objectOrNilForKey:kHTLUserIdstr fromDictionary:dict];
            self.verifiedType = [[self objectOrNilForKey:kHTLUserVerifiedType fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kHTLUserCity fromDictionary:dict];
            self.verifiedSource = [self objectOrNilForKey:kHTLUserVerifiedSource fromDictionary:dict];
            self.userAbility = [[self objectOrNilForKey:kHTLUserUserAbility fromDictionary:dict] doubleValue];
            self.lang = [self objectOrNilForKey:kHTLUserLang fromDictionary:dict];
            self.ptype = [[self objectOrNilForKey:kHTLUserPtype fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kHTLUserFollowing fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.coverImagePhone forKey:kHTLUserCoverImagePhone];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userIdentifier] forKey:kHTLUserId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.biFollowersCount] forKey:kHTLUserBiFollowersCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urank] forKey:kHTLUserUrank];
    [mutableDict setValue:self.profileImageUrl forKey:kHTLUserProfileImageUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.classProperty] forKey:kHTLUserClass];
    [mutableDict setValue:self.verifiedContactEmail forKey:kHTLUserVerifiedContactEmail];
    [mutableDict setValue:self.province forKey:kHTLUserProvince];
    [mutableDict setValue:[NSNumber numberWithBool:self.verified] forKey:kHTLUserVerified];
    [mutableDict setValue:[NSNumber numberWithBool:self.geoEnabled] forKey:kHTLUserGeoEnabled];
    [mutableDict setValue:self.url forKey:kHTLUserUrl];
    [mutableDict setValue:[NSNumber numberWithBool:self.followMe] forKey:kHTLUserFollowMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesCount] forKey:kHTLUserStatusesCount];
    [mutableDict setValue:self.userDescription forKey:kHTLUserDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followersCount] forKey:kHTLUserFollowersCount];
    [mutableDict setValue:self.verifiedContactMobile forKey:kHTLUserVerifiedContactMobile];
    [mutableDict setValue:self.location forKey:kHTLUserLocation];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbrank] forKey:kHTLUserMbrank];
    [mutableDict setValue:self.avatarLarge forKey:kHTLUserAvatarLarge];
    [mutableDict setValue:[NSNumber numberWithDouble:self.star] forKey:kHTLUserStar];
    [mutableDict setValue:self.verifiedTrade forKey:kHTLUserVerifiedTrade];
    [mutableDict setValue:self.weihao forKey:kHTLUserWeihao];
    [mutableDict setValue:self.coverImage forKey:kHTLUserCoverImage];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineStatus] forKey:kHTLUserOnlineStatus];
    [mutableDict setValue:self.profileUrl forKey:kHTLUserProfileUrl];
    [mutableDict setValue:self.verifiedContactName forKey:kHTLUserVerifiedContactName];
    [mutableDict setValue:self.verifiedSourceUrl forKey:kHTLUserVerifiedSourceUrl];
    [mutableDict setValue:self.screenName forKey:kHTLUserScreenName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pagefriendsCount] forKey:kHTLUserPagefriendsCount];
    [mutableDict setValue:self.verifiedReason forKey:kHTLUserVerifiedReason];
    [mutableDict setValue:self.name forKey:kHTLUserName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.friendsCount] forKey:kHTLUserFriendsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbtype] forKey:kHTLUserMbtype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockApp] forKey:kHTLUserBlockApp];
    [mutableDict setValue:self.avatarHd forKey:kHTLUserAvatarHd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creditScore] forKey:kHTLUserCreditScore];
    [mutableDict setValue:self.remark forKey:kHTLUserRemark];
    [mutableDict setValue:self.createdAt forKey:kHTLUserCreatedAt];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockWord] forKey:kHTLUserBlockWord];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllActMsg] forKey:kHTLUserAllowAllActMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedState] forKey:kHTLUserVerifiedState];
    [mutableDict setValue:self.dianping forKey:kHTLUserDianping];
    [mutableDict setValue:self.domain forKey:kHTLUserDomain];
    [mutableDict setValue:self.verifiedReasonModified forKey:kHTLUserVerifiedReasonModified];
    [mutableDict setValue:self.cardid forKey:kHTLUserCardid];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllComment] forKey:kHTLUserAllowAllComment];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedLevel] forKey:kHTLUserVerifiedLevel];
    [mutableDict setValue:self.verifiedReasonUrl forKey:kHTLUserVerifiedReasonUrl];
    [mutableDict setValue:self.gender forKey:kHTLUserGender];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favouritesCount] forKey:kHTLUserFavouritesCount];
    [mutableDict setValue:self.idstr forKey:kHTLUserIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedType] forKey:kHTLUserVerifiedType];
    [mutableDict setValue:self.city forKey:kHTLUserCity];
    [mutableDict setValue:self.verifiedSource forKey:kHTLUserVerifiedSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userAbility] forKey:kHTLUserUserAbility];
    [mutableDict setValue:self.lang forKey:kHTLUserLang];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ptype] forKey:kHTLUserPtype];
    [mutableDict setValue:[NSNumber numberWithBool:self.following] forKey:kHTLUserFollowing];

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

    self.coverImagePhone = [aDecoder decodeObjectForKey:kHTLUserCoverImagePhone];
    self.userIdentifier = [aDecoder decodeDoubleForKey:kHTLUserId];
    self.biFollowersCount = [aDecoder decodeDoubleForKey:kHTLUserBiFollowersCount];
    self.urank = [aDecoder decodeDoubleForKey:kHTLUserUrank];
    self.profileImageUrl = [aDecoder decodeObjectForKey:kHTLUserProfileImageUrl];
    self.classProperty = [aDecoder decodeDoubleForKey:kHTLUserClass];
    self.verifiedContactEmail = [aDecoder decodeObjectForKey:kHTLUserVerifiedContactEmail];
    self.province = [aDecoder decodeObjectForKey:kHTLUserProvince];
    self.verified = [aDecoder decodeBoolForKey:kHTLUserVerified];
    self.geoEnabled = [aDecoder decodeBoolForKey:kHTLUserGeoEnabled];
    self.url = [aDecoder decodeObjectForKey:kHTLUserUrl];
    self.followMe = [aDecoder decodeBoolForKey:kHTLUserFollowMe];
    self.statusesCount = [aDecoder decodeDoubleForKey:kHTLUserStatusesCount];
    self.userDescription = [aDecoder decodeObjectForKey:kHTLUserDescription];
    self.followersCount = [aDecoder decodeDoubleForKey:kHTLUserFollowersCount];
    self.verifiedContactMobile = [aDecoder decodeObjectForKey:kHTLUserVerifiedContactMobile];
    self.location = [aDecoder decodeObjectForKey:kHTLUserLocation];
    self.mbrank = [aDecoder decodeDoubleForKey:kHTLUserMbrank];
    self.avatarLarge = [aDecoder decodeObjectForKey:kHTLUserAvatarLarge];
    self.star = [aDecoder decodeDoubleForKey:kHTLUserStar];
    self.verifiedTrade = [aDecoder decodeObjectForKey:kHTLUserVerifiedTrade];
    self.weihao = [aDecoder decodeObjectForKey:kHTLUserWeihao];
    self.coverImage = [aDecoder decodeObjectForKey:kHTLUserCoverImage];
    self.onlineStatus = [aDecoder decodeDoubleForKey:kHTLUserOnlineStatus];
    self.profileUrl = [aDecoder decodeObjectForKey:kHTLUserProfileUrl];
    self.verifiedContactName = [aDecoder decodeObjectForKey:kHTLUserVerifiedContactName];
    self.verifiedSourceUrl = [aDecoder decodeObjectForKey:kHTLUserVerifiedSourceUrl];
    self.screenName = [aDecoder decodeObjectForKey:kHTLUserScreenName];
    self.pagefriendsCount = [aDecoder decodeDoubleForKey:kHTLUserPagefriendsCount];
    self.verifiedReason = [aDecoder decodeObjectForKey:kHTLUserVerifiedReason];
    self.name = [aDecoder decodeObjectForKey:kHTLUserName];
    self.friendsCount = [aDecoder decodeDoubleForKey:kHTLUserFriendsCount];
    self.mbtype = [aDecoder decodeDoubleForKey:kHTLUserMbtype];
    self.blockApp = [aDecoder decodeDoubleForKey:kHTLUserBlockApp];
    self.avatarHd = [aDecoder decodeObjectForKey:kHTLUserAvatarHd];
    self.creditScore = [aDecoder decodeDoubleForKey:kHTLUserCreditScore];
    self.remark = [aDecoder decodeObjectForKey:kHTLUserRemark];
    self.createdAt = [aDecoder decodeObjectForKey:kHTLUserCreatedAt];
    self.blockWord = [aDecoder decodeDoubleForKey:kHTLUserBlockWord];
    self.allowAllActMsg = [aDecoder decodeBoolForKey:kHTLUserAllowAllActMsg];
    self.verifiedState = [aDecoder decodeDoubleForKey:kHTLUserVerifiedState];
    self.dianping = [aDecoder decodeObjectForKey:kHTLUserDianping];
    self.domain = [aDecoder decodeObjectForKey:kHTLUserDomain];
    self.verifiedReasonModified = [aDecoder decodeObjectForKey:kHTLUserVerifiedReasonModified];
    self.cardid = [aDecoder decodeObjectForKey:kHTLUserCardid];
    self.allowAllComment = [aDecoder decodeBoolForKey:kHTLUserAllowAllComment];
    self.verifiedLevel = [aDecoder decodeDoubleForKey:kHTLUserVerifiedLevel];
    self.verifiedReasonUrl = [aDecoder decodeObjectForKey:kHTLUserVerifiedReasonUrl];
    self.gender = [aDecoder decodeObjectForKey:kHTLUserGender];
    self.favouritesCount = [aDecoder decodeDoubleForKey:kHTLUserFavouritesCount];
    self.idstr = [aDecoder decodeObjectForKey:kHTLUserIdstr];
    self.verifiedType = [aDecoder decodeDoubleForKey:kHTLUserVerifiedType];
    self.city = [aDecoder decodeObjectForKey:kHTLUserCity];
    self.verifiedSource = [aDecoder decodeObjectForKey:kHTLUserVerifiedSource];
    self.userAbility = [aDecoder decodeDoubleForKey:kHTLUserUserAbility];
    self.lang = [aDecoder decodeObjectForKey:kHTLUserLang];
    self.ptype = [aDecoder decodeDoubleForKey:kHTLUserPtype];
    self.following = [aDecoder decodeBoolForKey:kHTLUserFollowing];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_coverImagePhone forKey:kHTLUserCoverImagePhone];
    [aCoder encodeDouble:_userIdentifier forKey:kHTLUserId];
    [aCoder encodeDouble:_biFollowersCount forKey:kHTLUserBiFollowersCount];
    [aCoder encodeDouble:_urank forKey:kHTLUserUrank];
    [aCoder encodeObject:_profileImageUrl forKey:kHTLUserProfileImageUrl];
    [aCoder encodeDouble:_classProperty forKey:kHTLUserClass];
    [aCoder encodeObject:_verifiedContactEmail forKey:kHTLUserVerifiedContactEmail];
    [aCoder encodeObject:_province forKey:kHTLUserProvince];
    [aCoder encodeBool:_verified forKey:kHTLUserVerified];
    [aCoder encodeBool:_geoEnabled forKey:kHTLUserGeoEnabled];
    [aCoder encodeObject:_url forKey:kHTLUserUrl];
    [aCoder encodeBool:_followMe forKey:kHTLUserFollowMe];
    [aCoder encodeDouble:_statusesCount forKey:kHTLUserStatusesCount];
    [aCoder encodeObject:_userDescription forKey:kHTLUserDescription];
    [aCoder encodeDouble:_followersCount forKey:kHTLUserFollowersCount];
    [aCoder encodeObject:_verifiedContactMobile forKey:kHTLUserVerifiedContactMobile];
    [aCoder encodeObject:_location forKey:kHTLUserLocation];
    [aCoder encodeDouble:_mbrank forKey:kHTLUserMbrank];
    [aCoder encodeObject:_avatarLarge forKey:kHTLUserAvatarLarge];
    [aCoder encodeDouble:_star forKey:kHTLUserStar];
    [aCoder encodeObject:_verifiedTrade forKey:kHTLUserVerifiedTrade];
    [aCoder encodeObject:_weihao forKey:kHTLUserWeihao];
    [aCoder encodeObject:_coverImage forKey:kHTLUserCoverImage];
    [aCoder encodeDouble:_onlineStatus forKey:kHTLUserOnlineStatus];
    [aCoder encodeObject:_profileUrl forKey:kHTLUserProfileUrl];
    [aCoder encodeObject:_verifiedContactName forKey:kHTLUserVerifiedContactName];
    [aCoder encodeObject:_verifiedSourceUrl forKey:kHTLUserVerifiedSourceUrl];
    [aCoder encodeObject:_screenName forKey:kHTLUserScreenName];
    [aCoder encodeDouble:_pagefriendsCount forKey:kHTLUserPagefriendsCount];
    [aCoder encodeObject:_verifiedReason forKey:kHTLUserVerifiedReason];
    [aCoder encodeObject:_name forKey:kHTLUserName];
    [aCoder encodeDouble:_friendsCount forKey:kHTLUserFriendsCount];
    [aCoder encodeDouble:_mbtype forKey:kHTLUserMbtype];
    [aCoder encodeDouble:_blockApp forKey:kHTLUserBlockApp];
    [aCoder encodeObject:_avatarHd forKey:kHTLUserAvatarHd];
    [aCoder encodeDouble:_creditScore forKey:kHTLUserCreditScore];
    [aCoder encodeObject:_remark forKey:kHTLUserRemark];
    [aCoder encodeObject:_createdAt forKey:kHTLUserCreatedAt];
    [aCoder encodeDouble:_blockWord forKey:kHTLUserBlockWord];
    [aCoder encodeBool:_allowAllActMsg forKey:kHTLUserAllowAllActMsg];
    [aCoder encodeDouble:_verifiedState forKey:kHTLUserVerifiedState];
    [aCoder encodeObject:_dianping forKey:kHTLUserDianping];
    [aCoder encodeObject:_domain forKey:kHTLUserDomain];
    [aCoder encodeObject:_verifiedReasonModified forKey:kHTLUserVerifiedReasonModified];
    [aCoder encodeObject:_cardid forKey:kHTLUserCardid];
    [aCoder encodeBool:_allowAllComment forKey:kHTLUserAllowAllComment];
    [aCoder encodeDouble:_verifiedLevel forKey:kHTLUserVerifiedLevel];
    [aCoder encodeObject:_verifiedReasonUrl forKey:kHTLUserVerifiedReasonUrl];
    [aCoder encodeObject:_gender forKey:kHTLUserGender];
    [aCoder encodeDouble:_favouritesCount forKey:kHTLUserFavouritesCount];
    [aCoder encodeObject:_idstr forKey:kHTLUserIdstr];
    [aCoder encodeDouble:_verifiedType forKey:kHTLUserVerifiedType];
    [aCoder encodeObject:_city forKey:kHTLUserCity];
    [aCoder encodeObject:_verifiedSource forKey:kHTLUserVerifiedSource];
    [aCoder encodeDouble:_userAbility forKey:kHTLUserUserAbility];
    [aCoder encodeObject:_lang forKey:kHTLUserLang];
    [aCoder encodeDouble:_ptype forKey:kHTLUserPtype];
    [aCoder encodeBool:_following forKey:kHTLUserFollowing];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLUser *copy = [[HTLUser alloc] init];
    
    if (copy) {

        copy.coverImagePhone = [self.coverImagePhone copyWithZone:zone];
        copy.userIdentifier = self.userIdentifier;
        copy.biFollowersCount = self.biFollowersCount;
        copy.urank = self.urank;
        copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
        copy.classProperty = self.classProperty;
        copy.verifiedContactEmail = [self.verifiedContactEmail copyWithZone:zone];
        copy.province = [self.province copyWithZone:zone];
        copy.verified = self.verified;
        copy.geoEnabled = self.geoEnabled;
        copy.url = [self.url copyWithZone:zone];
        copy.followMe = self.followMe;
        copy.statusesCount = self.statusesCount;
        copy.userDescription = [self.userDescription copyWithZone:zone];
        copy.followersCount = self.followersCount;
        copy.verifiedContactMobile = [self.verifiedContactMobile copyWithZone:zone];
        copy.location = [self.location copyWithZone:zone];
        copy.mbrank = self.mbrank;
        copy.avatarLarge = [self.avatarLarge copyWithZone:zone];
        copy.star = self.star;
        copy.verifiedTrade = [self.verifiedTrade copyWithZone:zone];
        copy.weihao = [self.weihao copyWithZone:zone];
        copy.coverImage = [self.coverImage copyWithZone:zone];
        copy.onlineStatus = self.onlineStatus;
        copy.profileUrl = [self.profileUrl copyWithZone:zone];
        copy.verifiedContactName = [self.verifiedContactName copyWithZone:zone];
        copy.verifiedSourceUrl = [self.verifiedSourceUrl copyWithZone:zone];
        copy.screenName = [self.screenName copyWithZone:zone];
        copy.pagefriendsCount = self.pagefriendsCount;
        copy.verifiedReason = [self.verifiedReason copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.friendsCount = self.friendsCount;
        copy.mbtype = self.mbtype;
        copy.blockApp = self.blockApp;
        copy.avatarHd = [self.avatarHd copyWithZone:zone];
        copy.creditScore = self.creditScore;
        copy.remark = [self.remark copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.blockWord = self.blockWord;
        copy.allowAllActMsg = self.allowAllActMsg;
        copy.verifiedState = self.verifiedState;
        copy.dianping = [self.dianping copyWithZone:zone];
        copy.domain = [self.domain copyWithZone:zone];
        copy.verifiedReasonModified = [self.verifiedReasonModified copyWithZone:zone];
        copy.cardid = [self.cardid copyWithZone:zone];
        copy.allowAllComment = self.allowAllComment;
        copy.verifiedLevel = self.verifiedLevel;
        copy.verifiedReasonUrl = [self.verifiedReasonUrl copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.favouritesCount = self.favouritesCount;
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.verifiedType = self.verifiedType;
        copy.city = [self.city copyWithZone:zone];
        copy.verifiedSource = [self.verifiedSource copyWithZone:zone];
        copy.userAbility = self.userAbility;
        copy.lang = [self.lang copyWithZone:zone];
        copy.ptype = self.ptype;
        copy.following = self.following;
    }
    
    return copy;
}


@end
