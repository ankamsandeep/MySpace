//
//  MySpaceAudioBook.m
//  MySpace
//
//  Created by Nuvvala on 5/7/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceAudioBook.h"

@implementation MySpaceAudioBook

-(instancetype)initWithTitle:(NSString *)title author:(NSString *)author imageURL:(NSString *)imageURL
{
    self = [super init];
    if (!self) {
        return nil;
    }
    self.title = title;
    self.author=author;
    [self downloadImageFromURL:imageURL];
    
    return self;
}

-(void)downloadImageFromURL:(NSString *)imageURL
{
    NSURL *url = [NSURL URLWithString:imageURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.icon = [UIImage imageWithData:data];
}

@end
