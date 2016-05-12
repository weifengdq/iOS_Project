//
//  HTLAnnotations.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLAnnotations.h"


NSString *const kHTLAnnotationsClientMblogid = @"client_mblogid";
NSString *const kHTLAnnotationsShooting = @"shooting";
NSString *const kHTLAnnotationsMapiRequest = @"mapi_request";


@interface HTLAnnotations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLAnnotations

@synthesize clientMblogid = _clientMblogid;
@synthesize shooting = _shooting;
@synthesize mapiRequest = _mapiRequest;


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
            self.clientMblogid = [self objectOrNilForKey:kHTLAnnotationsClientMblogid fromDictionary:dict];
            self.shooting = [[self objectOrNilForKey:kHTLAnnotationsShooting fromDictionary:dict] doubleValue];
            self.mapiRequest = [[self objectOrNilForKey:kHTLAnnotationsMapiRequest fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.clientMblogid forKey:kHTLAnnotationsClientMblogid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shooting] forKey:kHTLAnnotationsShooting];
    [mutableDict setValue:[NSNumber numberWithBool:self.mapiRequest] forKey:kHTLAnnotationsMapiRequest];

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

    self.clientMblogid = [aDecoder decodeObjectForKey:kHTLAnnotationsClientMblogid];
    self.shooting = [aDecoder decodeDoubleForKey:kHTLAnnotationsShooting];
    self.mapiRequest = [aDecoder decodeBoolForKey:kHTLAnnotationsMapiRequest];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_clientMblogid forKey:kHTLAnnotationsClientMblogid];
    [aCoder encodeDouble:_shooting forKey:kHTLAnnotationsShooting];
    [aCoder encodeBool:_mapiRequest forKey:kHTLAnnotationsMapiRequest];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLAnnotations *copy = [[HTLAnnotations alloc] init];
    
    if (copy) {

        copy.clientMblogid = [self.clientMblogid copyWithZone:zone];
        copy.shooting = self.shooting;
        copy.mapiRequest = self.mapiRequest;
    }
    
    return copy;
}


@end
