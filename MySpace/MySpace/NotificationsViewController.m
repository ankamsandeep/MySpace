//
//  NotificationsViewController.m
//  MySpace
//
//  Created by Nuvvala on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "NotificationsViewController.h"
#import "TableViewCell.h"
#import "MySpaceAudioBook.h"
#import "MySpaceDataRequestor.h"

@interface NotificationsViewController ()

@property(nonatomic,strong) MySpaceDataRequestor *dataRequest;
@property(nonatomic,strong) NSArray *tableViewItems;

@end

@implementation NotificationsViewController

static NSString *CellIdentifier = @"ImageCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:CellIdentifier];
    
    [self requestJSONFromUrl:@"https://itunes.apple.com/us/rss/topaudiobooks/limit=10/json"];
    
}

#pragma mark -PrivateMethods

-(void)requestJSONFromUrl:(NSString *)urlString
{
    
    self.dataRequest = [[MySpaceDataRequestor alloc]init];
    
    [self.dataRequest getStreamsFromURLString:urlString success:^(NSArray *booksArray) {
        
        self.tableViewItems = booksArray;
        [self.tableView reloadData];
        
    } failure:^(NSError *error) {
        
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Error in Loading booksArraay" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alertView show];
    }];
}

#pragma mark - UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

#pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableViewItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    MySpaceAudioBook *audioBooks = self.tableViewItems[indexPath.row];
    if (audioBooks) {
        [cell configureCellWithAudioBook:audioBooks];
    }
       return cell;
}
@end
