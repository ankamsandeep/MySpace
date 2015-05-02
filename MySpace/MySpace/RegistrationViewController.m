//
//  RegistrationViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "RegistrationViewController.h"
#import <Parse/Parse.h>

@implementation RegistrationViewController

- (IBAction)registerNowPressed:(id)sender {
    
    PFUser *user = [PFUser user];
    
    user.email = self.emailTextbox.text;
    user.username = self.usernameTextbox.text;
    user.password = self.passwordTextbox.text;
    [user setObject:self.firstNameTextbox.text forKey:@"FirstName"];
    [user setObject:self.lastNameTextbox.text forKey:@"LastName"];
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Registration Successful!!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alertView show];
            
            // write code to show Home screen.
            // .............
            
            // or code to force users to login screen
            [self dismissViewControllerAnimated:YES completion:nil];
            
        } else {
            
            NSString *errorString = [error userInfo][@"error"];
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alertView show];
        }
    }];
}

#pragma mark - <UITextViewDelegate>

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}

@end
