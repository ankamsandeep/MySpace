//
//  MySpaceAudioBook.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/5/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceAudioBook.h"

@implementation MySpaceAudioBook

- (instancetype)initWithTitle:(NSString *)title autohr:(NSString *)author imageURL:(NSString *)imageURL {
    
    self = [super init];
    if (!self) {
        return nil;
    }
    
   _title = title;
   _author = author;
    
    [self downloadImageFromURL:imageURL];
    return self;
}

- (void)downloadImageFromURL:(NSString *)imageURL {
    
    NSURL *url = [NSURL URLWithString:imageURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.icon = [UIImage imageWithData:data];
}

@end
