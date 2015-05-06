//
//  HomeController.m
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "HomeController.h"
#import "NotificationsController.h"
#import "SettingsController.h"
#import "MySpaceImageCellView.h"

@interface HomeController ()

@end

@implementation HomeController

static NSString *const cellIdentifier = @"ImageCell";


- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    UINib *cellNib = [UINib nibWithNibName:@"MySpaceImageCellView" bundle:nil];
    
    [self.tableView registerNib:cellNib forCellReuseIdentifier:cellIdentifier];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MySpaceImageCellView *cell = (MySpaceImageCellView *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [cell configureCellForIndexPath:indexPath];
    
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
