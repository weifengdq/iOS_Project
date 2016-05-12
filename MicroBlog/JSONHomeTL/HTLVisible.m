//
//  HTLVisible.m
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HTLVisible.h"


NSString *const kHTLVisibleType = @"type";
NSString *const kHTLVisibleListId = @"list_id";


@interface HTLVisible ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HTLVisible

@synthesize type = _type;
@synthesize listId = _listId;


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
            self.type = [[self objectOrNilForKey:kHTLVisibleType fromDictionary:dict] doubleValue];
            self.listId = [[self objectOrNilForKey:kHTLVisibleListId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kHTLVisibleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listId] forKey:kHTLVisibleListId];

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

    self.type = [aDecoder decodeDoubleForKey:kHTLVisibleType];
    self.listId = [aDecoder decodeDoubleForKey:kHTLVisibleListId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_type forKey:kHTLVisibleType];
    [aCoder encodeDouble:_listId forKey:kHTLVisibleListId];
}

- (id)copyWithZone:(NSZone *)zone
{
    HTLVisible *copy = [[HTLVisible alloc] init];
    
    if (copy) {

        copy.type = self.type;
        copy.listId = self.listId;
    }
    
    return copy;
}


@end
