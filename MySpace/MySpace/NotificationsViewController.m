//
//  NotificationsViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "NotificationsViewController.h"
#import "MySpaceImageCell.h"

@implementation NotificationsViewController

static NSString *const cellIdentifier = @"ImageCell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"MySpaceImageCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier];
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
