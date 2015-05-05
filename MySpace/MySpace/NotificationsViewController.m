//
//  NotificationsViewController.m
//  MySpace
//
//  Created by Nuvvala on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "NotificationsViewController.h"

@interface NotificationsViewController ()
{
    NSMutableArray *mutArray;
    NSMutableArray *mutArray2;
    NSMutableArray *mutArray3;
    }
@end

@implementation NotificationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:CellIdentifier];
    }
    
    
    
    
    mutArray = [[NSMutableArray alloc]initWithObjects:@"India",@"U.S.A",@"Australia",@"England",@"Canada",@"China", nil];
    mutArray2=[[NSMutableArray alloc]initWithObjects:@"New Delhi",@"Washington, D.C.",@"Canberra",@"London",@"Ottawa",@"Beijing", nil];
    mutArray3=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"indiaIcon.jpg"],[UIImage imageNamed:@"USAicon1.png"],[UIImage imageNamed:@"Australiaicon1.png"],[UIImage imageNamed:@"englandIcon1.png"],[UIImage imageNamed:@"canadaIcon1.png"],[UIImage imageNamed:@"Chinaicon.1.png"], nil];
   
    
   
    cell.imageView.image=[mutArray3 objectAtIndex:indexPath.row];
    
    UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(110, 30, 100, 20)];
   
    lable1.text=[mutArray objectAtIndex:indexPath.row];
    [cell.contentView addSubview:lable1];
    UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(110, 50, 150, 20)];
    
    
     lable2.text=[mutArray2 objectAtIndex:indexPath.row];
    [cell.contentView addSubview:lable2];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
