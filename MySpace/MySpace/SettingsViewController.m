//
//  SettingsViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "SettingsViewController.h"
#import <Parse/Parse.h>

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self displayUserDetails];
}

#pragma mark - Instance Methods

- (void)displayUserDetails {
    
    NSString *currentUsername = [[NSUserDefaults standardUserDefaults] valueForKey:@"username"];
    
    PFQuery *query = [PFUser query];
    [query whereKey:@"username" equalTo:currentUsername];
    NSArray *results = [query findObjects];
    
    PFUser *user = [results firstObject];
    
    self.firstNameLabel.text = [user valueForKey:@"FirstName"];
    self.lastNameLabel.text = [user valueForKey:@"LastName"];
    
    self.usernameLabel.text = user.username;
    self.emailLabel.text = user.email;
}

#pragma mark - Actions

- (IBAction)signoutButtonPressed:(id)sender {
    
    [PFUser logOutInBackground];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
