//
//  HomeViewController.m
//  MySpace
//
//  Created by Nuvvala on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
{
    NSMutableArray *mutableArray;
    NSMutableArray *mutableArray2;
    


}

@end

@implementation HomeViewController

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
    
    
   
    
    cell.imageView.image=[UIImage imageNamed:@"Pic.jpg"];
    UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(110, 30, 100, 20)];
    lable1.text=@"Country";
    [cell.contentView addSubview:lable1];
    
    UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(110, 50, 150, 20)];
    lable2.text=@"Capital";
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
