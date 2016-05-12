//
//  HTLMicroBlog.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLMicroBlog.h"
#import "HTLStatuses.h"


NSString *const kHTLMicroBlogAd = @"ad";
NSString *const kHTLMicroBlogHasvisible = @"hasvisible";
NSString *const kHTLMicroBlogHasUnread = @"has_unread";
NSString *const kHTLMicroBlogAdvertises = @"advertises";
NSString *const kHTLMicroBlogPreviousCursor = @"previous_cursor";
NSString *const kHTLMicroBlogUveBlank = @"uve_blank";
NSString *const kHTLMicroBlogTotalNumber = @"total_number";
NSString *const kHTLMicroBlogInterval = @"interval";
NSString *const kHTLMicroBlogMaxId = @"max_id";
NSString *const kHTLMicroBlogStatuses = @"statuses";
NSString *const kHTLMicroBlogNextCursor = @"next_cursor";
NSString *const kHTLMicroBlogSinceId = @"since_id";


@interface HTLMicroBlog ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLMicroBlog

@synthesize ad = _ad;
@synthesize hasvisible = _hasvisible;
@synthesize hasUnread = _hasUnread;
@synthesize advertises = _advertises;
@synthesize previousCursor = _previousCursor;
@synthesize uveBlank = _uveBlank;
@synthesize totalNumber = _totalNumber;
@synthesize interval = _interval;
@synthesize maxId = _maxId;
@synthesize statuses = _statuses;
@synthesize nextCursor = _nextCursor;
@synthesize sinceId = _sinceId;


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
            self.ad = [self objectOrNilForKey:kHTLMicroBlogAd fromDictionary:dict];
            self.hasvisible = [[self objectOrNilForKey:kHTLMicroBlogHasvisible fromDictionary:dict] boolValue];
            self.hasUnread = [[self objectOrNilForKey:kHTLMicroBlogHasUnread fromDictionary:dict] doubleValue];
            self.advertises = [self objectOrNilForKey:kHTLMicroBlogAdvertises fromDictionary:dict];
            self.previousCursor = [[self objectOrNilForKey:kHTLMicroBlogPreviousCursor fromDictionary:dict] doubleValue];
            self.uveBlank = [[self objectOrNilForKey:kHTLMicroBlogUveBlank fromDictionary:dict] doubleValue];
            self.totalNumber = [[self objectOrNilForKey:kHTLMicroBlogTotalNumber fromDictionary:dict] doubleValue];
            self.interval = [[self objectOrNilForKey:kHTLMicroBlogInterval fromDictionary:dict] doubleValue];
            self.maxId = [[self objectOrNilForKey:kHTLMicroBlogMaxId fromDictionary:dict] doubleValue];
    NSObject *receivedHTLStatuses = [dict objectForKey:kHTLMicroBlogStatuses];
    NSMutableArray *parsedHTLStatuses = [NSMutableArray array];
    if ([receivedHTLStatuses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedHTLStatuses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedHTLStatuses addObject:[HTLStatuses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedHTLStatuses isKindOfClass:[NSDictionary class]]) {
       [parsedHTLStatuses addObject:[HTLStatuses modelObjectWithDictionary:(NSDictionary *)receivedHTLStatuses]];
    }

    self.statuses = [NSArray arrayWithArray:parsedHTLStatuses];
            self.nextCursor = [[self objectOrNilForKey:kHTLMicroBlogNextCursor fromDictionary:dict] doubleValue];
            self.sinceId = [[self objectOrNilForKey:kHTLMicroBlogSinceId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForAd = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ad) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAd addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAd addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAd] forKey:kHTLMicroBlogAd];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasvisible] forKey:kHTLMicroBlogHasvisible];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasUnread] forKey:kHTLMicroBlogHasUnread];
    NSMutableArray *tempArrayForAdvertises = [NSMutableArray array];
    for (NSObject *subArrayObject in self.advertises) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAdvertises addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAdvertises addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAdvertises] forKey:kHTLMicroBlogAdvertises];
    [mutableDict setValue:[NSNumber numberWithDouble:self.previousCursor] forKey:kHTLMicroBlogPreviousCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.uveBlank] forKey:kHTLMicroBlogUveBlank];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalNumber] forKey:kHTLMicroBlogTotalNumber];
    [mutableDict setValue:[NSNumber numberWithDouble:self.interval] forKey:kHTLMicroBlogInterval];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxId] forKey:kHTLMicroBlogMaxId];
    NSMutableArray *tempArrayForStatuses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.statuses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForStatuses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForStatuses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForStatuses] forKey:kHTLMicroBlogStatuses];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nextCursor] forKey:kHTLMicroBlogNextCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sinceId] forKey:kHTLMicroBlogSinceId];

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

    self.ad = [aDecoder decodeObjectForKey:kHTLMicroBlogAd];
    self.hasvisible = [aDecoder decodeBoolForKey:kHTLMicroBlogHasvisible];
    self.hasUnread = [aDecoder decodeDoubleForKey:kHTLMicroBlogHasUnread];
    self.advertises = [aDecoder decodeObjectForKey:kHTLMicroBlogAdvertises];
    self.previousCursor = [aDecoder decodeDoubleForKey:kHTLMicroBlogPreviousCursor];
    self.uveBlank = [aDecoder decodeDoubleForKey:kHTLMicroBlogUveBlank];
    self.totalNumber = [aDecoder decodeDoubleForKey:kHTLMicroBlogTotalNumber];
    self.interval = [aDecoder decodeDoubleForKey:kHTLMicroBlogInterval];
    self.maxId = [aDecoder decodeDoubleForKey:kHTLMicroBlogMaxId];
    self.statuses = [aDecoder decodeObjectForKey:kHTLMicroBlogStatuses];
    self.nextCursor = [aDecoder decodeDoubleForKey:kHTLMicroBlogNextCursor];
    self.sinceId = [aDecoder decodeDoubleForKey:kHTLMicroBlogSinceId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ad forKey:kHTLMicroBlogAd];
    [aCoder encodeBool:_hasvisible forKey:kHTLMicroBlogHasvisible];
    [aCoder encodeDouble:_hasUnread forKey:kHTLMicroBlogHasUnread];
    [aCoder encodeObject:_advertises forKey:kHTLMicroBlogAdvertises];
    [aCoder encodeDouble:_previousCursor forKey:kHTLMicroBlogPreviousCursor];
    [aCoder encodeDouble:_uveBlank forKey:kHTLMicroBlogUveBlank];
    [aCoder encodeDouble:_totalNumber forKey:kHTLMicroBlogTotalNumber];
    [aCoder encodeDouble:_interval forKey:kHTLMicroBlogInterval];
    [aCoder encodeDouble:_maxId forKey:kHTLMicroBlogMaxId];
    [aCoder encodeObject:_statuses forKey:kHTLMicroBlogStatuses];
    [aCoder encodeDouble:_nextCursor forKey:kHTLMicroBlogNextCursor];
    [aCoder encodeDouble:_sinceId forKey:kHTLMicroBlogSinceId];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLMicroBlog *copy = [[HTLMicroBlog alloc] init];
    
    if (copy) {

        copy.ad = [self.ad copyWithZone:zone];
        copy.hasvisible = self.hasvisible;
        copy.hasUnread = self.hasUnread;
        copy.advertises = [self.advertises copyWithZone:zone];
        copy.previousCursor = self.previousCursor;
        copy.uveBlank = self.uveBlank;
        copy.totalNumber = self.totalNumber;
        copy.interval = self.interval;
        copy.maxId = self.maxId;
        copy.statuses = [self.statuses copyWithZone:zone];
        copy.nextCursor = self.nextCursor;
        copy.sinceId = self.sinceId;
    }
    
    return copy;
}


@end
