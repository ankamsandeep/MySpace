//
//  HomeViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "HomeViewController.h"
#import "MySpaceImageCell.h"
#import "MySpaceDataRequestor.h"

@interface HomeViewController()

@property (strong, nonatomic) MySpaceDataRequestor *requestor;

@end

@implementation HomeViewController

static NSString *const cellIdentifier = @"ImageCell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self requestJSONFromURL:@"https://itunes.apple.com/us/rss/topaudiobooks/limit=10/json"];
    
    UINib *cellNib = [UINib nibWithNibName:@"MySpaceImageCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier];
}

#pragma mark - Private Methods

- (void)requestJSONFromURL:(NSString *)urlString {
    
    self.requestor = [[MySpaceDataRequestor alloc] init];
    
    [self.requestor getStreamsFromURLString:urlString success:^(NSArray *stream){
        
    }failure:^(NSError *error){
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MySpaceImageCell *cell = (MySpaceImageCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    [cell configureCellForIndexPath:indexPath];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 78.0;
}

@end
