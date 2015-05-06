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
#import "SignoutViewController.h"
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
                                            
                                            [self navigationAndTabbar];
                                            
                                        } else {
                                            
                                            NSString *errorString = [error userInfo][@"error"];
                                            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Login Error" message:errorString delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                                            [alertView show];
                                        }
                                    }];

    [self navigationAndTabbar];

//    HomeViewController *homeScreen = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
//    [self presentViewController:homeScreen animated:YES completion:^{
//        }];
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

-(void)navigationAndTabbar
{
    
    HomeViewController *home = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    home.title = @"Home";
    // home.tabBarController.title = @"Home";
    UINavigationController *homeNavigationController = [[UINavigationController alloc]initWithRootViewController:home ];

    
    NotificationsViewController *notifications = [[NotificationsViewController alloc]initWithNibName:@"NotificationsViewController" bundle:nil];
    notifications.title = @"Notifications";
  //  notifications.tabBarController.title = @"Notifications";
     UINavigationController *notificationsNavigationController = [[UINavigationController alloc]initWithRootViewController:notifications];
    // UINavigationController *notificationsNavigationController = [[UINavigationController alloc]initWithNibName:@"NotificationsViewController" bundle:nil];
    
    
    SignoutViewController *signout= [[SignoutViewController alloc]initWithNibName:@"SignoutViewController" bundle:nil];
    signout.title = @"Signout";
   // signout.tabBarController.title = @"Signout";
    UINavigationController *signoutNavigationController = [[UINavigationController alloc]initWithRootViewController:signout];
    
    
    UITabBarController *myTabs = [[UITabBarController alloc]init];
    myTabs.viewControllers = @[homeNavigationController,notificationsNavigationController,signoutNavigationController];
    
    [self presentViewController:myTabs animated:YES completion:nil];

    
    }

@end
