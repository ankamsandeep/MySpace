//
//  MySpaceDataRequestor.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/4/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceDataRequestor.h"

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
    
    __weak typeof(self) weakSelf = self;
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {

        // __strong typeof(weakSelf) strongSelf = weakSelf;
        
        NSLog(@"%@", responseObject);
        success(@[]);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"%@", error);
        failure(error);
    }];
    [operation start];
}

@end
