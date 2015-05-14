//
//  NotificationsController.m
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "NotificationsController.h"
#import "MySpaceImageCellView.h"
#import "MySpaceDataRequestor.h"
#import "MySpaceAudioBook.h"


@interface NotificationsController ()
@property (strong, nonatomic) MySpaceDataRequestor *requestor;

@property (strong, nonatomic) NSArray *tableViewItems;

@end

@implementation NotificationsController

static NSString *const cellIdentifier1 = @"ImageCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self requestJSONFromURL:@"https://itunes.apple.com/us/rss/topaudiobooks/limit=10/json"];
    
    UINib *cellNib = [UINib nibWithNibName:@"MySpaceImageCellView" bundle:nil];
    
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier1];
    
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableViewItems count];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier1];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //return cell;
    
    MySpaceImageCellView *cell = (MySpaceImageCellView *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier1];
    
    MySpaceAudioBook *audioBook = self.tableViewItems[indexPath.row];
    
    if (audioBook) {
        [cell configureCellWithAudioBook:audioBook];
    }
    return cell;
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
