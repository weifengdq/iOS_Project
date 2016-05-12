//
//  HTLExtendInfo.h
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HTLAd;

@interface HTLExtendInfo : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) HTLAd *ad;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
