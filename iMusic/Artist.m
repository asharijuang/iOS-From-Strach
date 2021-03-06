//
//  Artist.m
//  iMusic
//
//  Created by Ashari Juang on 8/7/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "Artist.h"

@implementation Artist

@synthesize artistID = _artistID;
@synthesize artistName = _artistName;


+ (id)artistWithID:(NSUInteger)artistID name:(NSString *)artistName {
    return [[[self class] alloc] initWithID:artistID name:artistName];
}

- (id)initWithID:(NSUInteger)artistID name:(NSString *)artistName {
    self = [super init];
    if (self) {
        self.artistID = artistID;
        self.artistName = artistName;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%lu - %@", self.artistID, self.artistName];
}

@end
