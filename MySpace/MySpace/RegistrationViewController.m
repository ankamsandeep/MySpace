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

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
#pragma mark - ActionMethods

- (IBAction)registerNowPressed:(id)sender {
    
    PFUser *user = [PFUser user];
    user.email = self.emailTextbox.text;
    user.username= self.usernameTextbox.text;
    user.password= self.passwordTextbox.text;
    
    [user setObject:self.firstNameTextbox.text forKey:@"FirstName"];
    [user setObject:self.lastNameTextbox.text forKey:@"LastName"];
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
        if (!error) {
            UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Success" message:@"Registration Complete" delegate:self cancelButtonTitle:@"" otherButtonTitles: nil];
            [alertView show];
        }
        else {
            NSString *errorString = [error userInfo][@"error"] ;
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Failure" message:errorString delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
            [alert show];
        }
    }];
}
@end
