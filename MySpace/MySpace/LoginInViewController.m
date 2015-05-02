//
//  LoginInViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 4/27/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "LoginInViewController.h"
#import "RegistrationViewController.h"

@implementation LoginInViewController

#pragma mark - Actions

- (IBAction)signInButtonPressed:(id)sender {
    
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

@end
