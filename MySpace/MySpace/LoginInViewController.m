//
//  LoginInViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 4/27/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "LoginInViewController.h"



@implementation LoginInViewController

#pragma mark - Actions

- (IBAction)signInButtonPressed:(id)sender {
    [PFUser logInWithUsernameInBackground:self.userNameTextField.text password:self.passwordTextField.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            self.userNameTextField.text=@"";
                                            self.passwordTextField.text=@"";
                                            
//                                            [[NSUserDefaults standardUserDefaults] setObject:self.userNameTextField.text forKey:@"username"];
                                            
                                            [self createDashBoard];
                                            
                                            
                                        } else {
                                            NSString *errorString = [error userInfo][@"error"] ;
                                            UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"error" message:errorString delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
                                            [alertView show];
                                        }
                                    }];
}

-(void)createDashBoard
{
    HomeViewController *homeController = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    homeController.title=@"Home";
    homeController.tabBarController.title=@"Home";
    UINavigationController *homeNavigator = [[UINavigationController alloc]initWithRootViewController:homeController];
    NotificationsViewController *notificationController = [[NotificationsViewController alloc]initWithNibName:@"NotificationsViewController" bundle:nil];
    notificationController.title=@"Notification";
    notificationController.tabBarController.title=@"Notification";

    UINavigationController *notificationNavigator = [[UINavigationController alloc]initWithRootViewController:notificationController];
    SettingsViewController *settingsController = [[SettingsViewController alloc]initWithNibName:@"SettingsViewController" bundle:nil];
    settingsController.title=@"Settings";
    settingsController.tabBarController.title=@"Settings";

    UINavigationController *settingsNavigator = [[UINavigationController alloc]initWithRootViewController:settingsController];
    
    UITabBarController *Controller=[[UITabBarController alloc]init];
  //  NSArray *array =[[NSArray alloc]initWithObjects:homeController,notificationController,settingsController, nil];
    
    Controller.viewControllers=@[homeNavigator,notificationNavigator,settingsNavigator];
[self presentViewController:Controller animated:YES completion:^{
    
}];

}

- (IBAction)signUpButtonPressed:(id)sender {
    
    self.registrationController = [[RegistrationViewController alloc]initWithNibName:@"RegistrationViewController" bundle:nil];
    [self presentViewController:self.registrationController animated:YES completion:^{
        
    }];
 }


- (IBAction)forgotPasswordButtonPressed:(id)sender {
    self.forgetPassword = [[ForgetPasswordViewController alloc]initWithNibName:@"ForgetPasswordViewController" bundle:nil];
    [self presentViewController:self.forgetPassword animated:YES completion:^{
        
    }];
    }


#pragma mark - Private Actions


@end
