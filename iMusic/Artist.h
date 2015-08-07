//
//  Artist.h
//  iMusic
//
//  Created by Ashari Juang on 8/7/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Artist : NSObject

@property (nonatomic, assign) NSUInteger artistID;
@property (nonatomic, copy) NSString *artistName;

+ (id)artistWithID:(NSUInteger)artistID name:(NSString *)artistName;
- (id)initWithID:(NSUInteger)artistID name:(NSString *)artistName;

@end
