//
//  HTLAnnotations.h
//
//  Created by   on 5/10/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface HTLAnnotations : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *clientMblogid;
@property (nonatomic, assign) double shooting;
@property (nonatomic, assign) BOOL mapiRequest;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
