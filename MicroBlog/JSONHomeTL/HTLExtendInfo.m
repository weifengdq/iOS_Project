//
//  HTLExtendInfo.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLExtendInfo.h"
#import "HTLAd.h"


NSString *const kHTLExtendInfoAd = @"ad";


@interface HTLExtendInfo ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLExtendInfo

@synthesize ad = _ad;


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
            self.ad = [HTLAd modelObjectWithDictionary:[dict objectForKey:kHTLExtendInfoAd]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.ad dictionaryRepresentation] forKey:kHTLExtendInfoAd];

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

    self.ad = [aDecoder decodeObjectForKey:kHTLExtendInfoAd];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ad forKey:kHTLExtendInfoAd];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLExtendInfo *copy = [[HTLExtendInfo alloc] init];
    
    if (copy) {

        copy.ad = [self.ad copyWithZone:zone];
    }
    
    return copy;
}


@end
