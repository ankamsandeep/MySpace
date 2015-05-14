//
//  MySpaceDataRequestor.h
//  MySpace
//
//  Created by Kapil Rathan on 5/12/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFHTTPRequestOperation.h>

@interface MySpaceDataRequestor : NSObject

- (void)getStreamsFromURLString:(NSString *)urlString success:(void (^)(NSArray *))success
                        failure:(void (^)(NSError *))failure;

@end
