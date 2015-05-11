//
//  MySpaceDataRequestor.m
//  MySpace
//
//  Created by Nuvvala on 5/5/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceDataRequestor.h"
#import "MySpaceAudioBook.h"

@implementation MySpaceDataRequestor

-(instancetype) init{

    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}

-(void)getStreamsFromURLString:(NSString *)urlString success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *requestUrl = [NSURLRequest requestWithURL:url];
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:requestUrl];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
       
        NSDictionary *finalDict = (NSDictionary *)responseObject;
        //NSLog(@" %@ ",[finalDict[@"feed"] allKeys]);
        
        NSString *imageURLString = finalDict[@"feed"][@"icon"][@"label"];
        
        NSArray *array = finalDict[@"feed"][@"entry"];
        
       // NSDictionary *dict = array[@"im:name"][@"label"];
        NSMutableArray *booksArray = [[NSMutableArray alloc]init];
        for (NSDictionary *dict in array) {
            NSString *titleString = dict[@"im:name"][@"label"];
            NSString *subTitleString = dict[@"im:artist"][@"label"];
           
            
//            NSArray *imageArray = dict[@"im:image"];
//            NSString *imageURLString = [imageArray lastObject][@"label"];
            
            MySpaceAudioBook *book = [[MySpaceAudioBook alloc]initWithTitle:titleString author:subTitleString imageURL:imageURLString];
            [booksArray addObject:book];
            
           // NSLog(@" %@ ",dict[@"im:name"][@"label"]);
        }
       // NSLog(@"%@",booksArray);
        success(booksArray);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@" %@ ",error);
        failure(error);
    }];
    [operation start];
}

@end
