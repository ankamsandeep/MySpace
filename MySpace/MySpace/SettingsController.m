//
//  SettingsController.m
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "ViewController.h"
#import "SettingsController.h"
#import "Parse/Parse.h"

@interface SettingsController ()

@end

@implementation SettingsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self displayUserDetails];
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

#pragma mark - Instance Methods

- (void)displayUserDetails {
    
    NSString *currentUsername = [[NSUserDefaults standardUserDefaults] valueForKey:@"username"];
    
    PFQuery *query = [PFUser query];
    [query whereKey:@"username" equalTo:currentUsername];
    NSArray *results = [query findObjects];
    
    PFUser *user = [results firstObject];
    
    self.SettingsFirstNameLabel.text = [user valueForKey:@"FirstName"];
    self.SettingsLastNameLabel.text = [user valueForKey:@"LastName"];
    
    self.SettingsUserNameLabel.text = user.username;
    self.SettingsEmailLabel.text = user.email;
}



- (IBAction)SettingsSignoutButton:(UIButton *)sender {
    
    
    [PFUser logOutInBackground];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
