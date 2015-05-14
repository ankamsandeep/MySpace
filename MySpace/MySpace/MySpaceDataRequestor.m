//
//  MySpaceDataRequestor.m
//  MySpace
//
//  Created by Kapil Rathan on 5/12/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceDataRequestor.h"
#import "MySpaceAudioBook.h"

@implementation MySpaceDataRequestor

- (instancetype) init {
    
    self = [super init];
    
    if (!self) {
        return nil;
    }
    return self;
}

- (void)getStreamsFromURLString:(NSString *)urlString success:(void (^)(NSArray *))success
                        failure:(void (^)(NSError *))failure {
    
    NSURL *requestURL = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:requestURL];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        NSDictionary *responseDictionary = (NSDictionary *)responseObject;
        
        NSString *imageURLString = responseDictionary[@"feed"][@"icon"][@"label"];
        NSArray *entryArray = responseDictionary[@"feed"][@"entry"];
        NSMutableArray *audioBooks = [[NSMutableArray alloc] init];
        
        for (NSDictionary *dictionary in entryArray) {
            
            NSString *titleString = dictionary[@"im:name"][@"label"];
            NSString *subtitleString = dictionary[@"im:artist"][@"label"];
            MySpaceAudioBook *book = [[MySpaceAudioBook alloc] initWithTitle:titleString autohr:subtitleString imageURL:imageURLString];
            [audioBooks addObject:book];
        }
        
        success(audioBooks);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"%@", error);
        failure(error);
    }];
    [operation start];
}

@end
