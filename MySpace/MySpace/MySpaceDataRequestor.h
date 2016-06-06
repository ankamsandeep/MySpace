//
//  MySpaceDataRequestor.h
//  MySpace
//
//  Created by Sandeep Ankam on 5/4/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFHTTPRequestOperation.h>

@interface MySpaceDataRequestor : NSObject

- (void)getStreamsFromURLString:(NSString *)urlString success:(void (^)(NSArray *))success
                        failure:(void (^)(NSError *))failure;

@end
