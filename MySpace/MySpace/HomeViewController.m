//
//  HomeViewController.m
//  MySpace
//
//  Created by nishanth reddy kuninti on 5/5/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "HomeViewController.h"
#import "NotificationsViewController.h"
#import "SignoutViewController.h"
#import "RegistrationViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *myIdentifier = @"MyCell";
   
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myIdentifier];

   cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:myIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];

    
    
    return cell;
    
    }























@end
