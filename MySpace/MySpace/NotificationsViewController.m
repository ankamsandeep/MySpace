//
//  NotificationsViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "NotificationsViewController.h"
#import "MySpaceImageCell.h"
#import "MySpaceDataRequestor.h"
#import "MySpaceAudioBook.h"

@interface NotificationsViewController()

@property (strong, nonatomic) MySpaceDataRequestor *requestor;

@property (strong, nonatomic) NSArray *tableViewItems;

@end

static NSString *const cellIdentifier = @"ImageCell";

@implementation NotificationsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self requestJSONFromURL:@"https://itunes.apple.com/us/rss/topaudiobooks/limit=10/json"];
    
    UINib *cellNib = [UINib nibWithNibName:@"MySpaceImageCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier];
}

#pragma mark - Private Methods

- (void)requestJSONFromURL:(NSString *)urlString {
    
    self.requestor = [[MySpaceDataRequestor alloc] init];
    
    [self.requestor getStreamsFromURLString:urlString success:^(NSArray *audioBooks){
        
        self.tableViewItems = audioBooks;
        [self.tableView reloadData];
        
    }failure:^(NSError *error){
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Error in loading audio books" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.tableViewItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    MySpaceImageCell *cell = (MySpaceImageCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    MySpaceAudioBook *audioBook = self.tableViewItems[indexPath.row];
    
    if (audioBook) {
        [cell configureCellWithAudioBook:audioBook];
    }
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 78.0;
}


@end
