//
//  SettingsViewController.m
//  MySpace
//
//  Created by Nuvvala on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "SettingsViewController.h"
#import <Parse/Parse.h>

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       [self displayUSerDetails];
    
}

#pragma mark - DataRetrivalMethod

-(void)displayUSerDetails
{
    NSString *currentUserName = [[NSUserDefaults standardUserDefaults]valueForKey:@"username"];
    
    PFQuery *query = [PFUser query];
    [query whereKey:@"username" equalTo:currentUserName];
    NSArray *results = [query findObjects];
    
    PFUser *user = [results firstObject];
    
    self.firstNameLabel.text = [user valueForKey:@"FirstName"];
    self.lastNameLabel.text = [user valueForKey:@"LastName"];
    self.usernameLabel.text = user.username;
    self.emailLabel.text = user.email;
   
}

#pragma mark - ActionMethods

-(IBAction)pressedSignOutButtton:(id)sender
{
    [PFUser logOutInBackground];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];

}
@end
