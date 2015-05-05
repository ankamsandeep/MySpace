//
//  LoginInViewController.h
//  MySpace
//
//  Created by Sandeep Ankam on 4/27/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegistrationViewController.h"
#import <Parse/Parse.h>
#import "HomeViewController.h"
#import "NotificationsViewController.h"
#import "SettingsViewController.h"
@interface LoginInViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property(nonatomic,strong) RegistrationViewController *registrationController;

- (IBAction)signInButtonPressed:(id)sender;
- (IBAction)signUpButtonPressed:(id)sender;
- (IBAction)forgotPasswordButtonPressed:(id)sender;

@end
