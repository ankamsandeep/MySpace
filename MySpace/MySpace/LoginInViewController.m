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
    
}

- (IBAction)signUpButtonPressed:(id)sender {
    
    self.registrationController = [[RegistrationViewController alloc]initWithNibName:@"RegistrationViewController" bundle:nil];
    [self presentViewController:self.registrationController animated:YES completion:^{
        
    }];
    

}


- (IBAction)forgotPasswordButtonPressed:(id)sender {
    
}


#pragma mark - Private Actions


@end
