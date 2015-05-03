//
//  LoginInViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 4/27/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "LoginInViewController.h"
#import "RegistrationViewController.h"

#import "HomeViewController.h"
#import "NotificationsViewController.h"
#import "SettingsViewController.h"

#import <Parse/Parse.h>

@implementation LoginInViewController

#pragma mark - Actions

- (IBAction)signInButtonPressed:(id)sender {
    
    NSString *username = self.userNameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    [PFUser logInWithUsernameInBackground:username password:password
                                    block:^(PFUser *user, NSError *error) {
                                        
                                        if (user) {
                                            // Do stuff after successful login.
                                            
                                            [self presentUserDashboard];
                                            
                                        } else {
                                            
                                            NSString *errorString = [error userInfo][@"error"];
                                            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Login Error" message:errorString delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                                            [alertView show];
                                        }
                                    }];
}

- (IBAction)signUpButtonPressed:(id)sender {
    
    [self presentRegistrationViewController];
}

- (IBAction)forgotPasswordButtonPressed:(id)sender {
    
}

#pragma mark - Private Actions

- (void)presentRegistrationViewController {
    
    RegistrationViewController *controller = [[RegistrationViewController alloc] initWithNibName:@"RegistrationViewController" bundle:nil];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)presentUserDashboard {
    
    HomeViewController *homeController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    homeController.title = @"Home";
    homeController.tabBarController.title = @"Home";
    UINavigationController *homeNavController = [[UINavigationController alloc] initWithRootViewController:homeController];
    
    NotificationsViewController *notificationController = [[NotificationsViewController alloc] initWithNibName:@"NotificationsViewController" bundle:nil];
    
    notificationController.title = @"Notifications";
    notificationController.tabBarController.title = @"Notifications";
    UINavigationController *notificationsNavController = [[UINavigationController alloc] initWithRootViewController:notificationController];

    SettingsViewController *settingsController = [[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle:nil];
    settingsController.title = @"Settings";
    settingsController.tabBarController.title = @"Settings";
    UINavigationController *settingsNavController = [[UINavigationController alloc] initWithRootViewController:settingsController];

    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    tabbarController.viewControllers = @[homeNavController, notificationsNavController, settingsNavController];
    
    [self presentViewController:tabbarController animated:YES completion:nil];
}

@end
