//
//  HTLPicUrls.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLPicUrls.h"


NSString *const kHTLPicUrlsThumbnailPic = @"thumbnail_pic";


@interface HTLPicUrls ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLPicUrls

@synthesize thumbnailPic = _thumbnailPic;


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
            self.thumbnailPic = [self objectOrNilForKey:kHTLPicUrlsThumbnailPic fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.thumbnailPic forKey:kHTLPicUrlsThumbnailPic];

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

    self.thumbnailPic = [aDecoder decodeObjectForKey:kHTLPicUrlsThumbnailPic];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_thumbnailPic forKey:kHTLPicUrlsThumbnailPic];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLPicUrls *copy = [[HTLPicUrls alloc] init];
    
    if (copy) {

        copy.thumbnailPic = [self.thumbnailPic copyWithZone:zone];
    }
    
    return copy;
}


@end
