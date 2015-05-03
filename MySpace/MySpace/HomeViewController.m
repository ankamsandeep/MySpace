//
//  HomeViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController

static NSString *const cellIdentifier = @"Cell";

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSString *titleString = [NSString stringWithFormat:@"Cell %ld", indexPath.row + 1];
    cell.textLabel.text = titleString;
    return cell;
}

@end
