//
//  Album.m
//  iMusic
//
//  Created by Ashari Juang on 8/7/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "Album.h"

@implementation Album

@synthesize albumID = _albumID;
@synthesize albumName = _albumName;
@synthesize imageURLString = _imageURLString;
@synthesize price = _price;
@synthesize iTunesURLString = _iTunesURLString;
@synthesize releaseDate = _releaseDate;
@synthesize genre = _genre;
@synthesize artist = _artist;

- (NSString *)description {
    return [NSString stringWithFormat:@"%lu - %@", self.albumID, self.albumName];
}

+ (NSURL *)iMusicDataURL {
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    return [[urls lastObject] URLByAppendingPathComponent:@"iMusicData.imusic"];
}

+ (NSArray *)findAll {
    NSData *data = [NSData dataWithContentsOfURL:[self iMusicDataURL]];
    if (!data) {
        return [NSMutableArray array];
    }
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

- (BOOL)save {
    NSMutableArray *albums = (NSMutableArray *)[[self class] findAll];
    [albums insertObject:self atIndex:0];
    NSData *fileData = [NSKeyedArchiver archivedDataWithRootObject:albums];
    return [fileData writeToURL:[[self class] iMusicDataURL] atomically:YES];
    
}
@end
