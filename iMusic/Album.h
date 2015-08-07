//
//  Album.h
//  iMusic
//
//  Created by Ashari Juang on 8/7/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "Artist.h"

@interface Album : NSObject

@property (nonatomic, assign) NSUInteger albumID;
@property (nonatomic, copy) NSString *albumName, *imageURLString, *price, *iTunesURLString, *genre;
@property (nonatomic, strong) NSDate *releaseDate;
@property (nonatomic, strong) Artist *artist;

+ (NSArray *)findAll;
- (BOOL)save;

@end
