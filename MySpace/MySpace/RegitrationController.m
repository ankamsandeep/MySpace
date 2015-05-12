//
//  RegitrationController.m
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "RegitrationController.h"
#import "Parse/Parse.h"

@interface RegitrationController ()

@end

@implementation RegitrationController

- (IBAction)RegistrationButton:(UIButton *)sender {
    
    PFUser *user = [PFUser user];
    
    user.username = self.RegistrationUsername.text;
    user.password = self.RegistrationPassword.text;
    user.email = self.RegistrationEmail.text;
    
    [user setObject:self.RegistrationFirstName.text forKey:@"FirstName"];
    [user setObject:self.RegistrationLastName.text forKey:@"LastName"];
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
            UIAlertView *SuccessAlert = [[UIAlertView alloc]initWithTitle:@"Registration Successfull" message:@"You are now Registered to MySpace" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [SuccessAlert show];
            [self dismissViewControllerAnimated:YES completion:nil];
            
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
            UIAlertView *ErrorAlert = [[UIAlertView alloc]initWithTitle:@"Error during Registration" message:errorString delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
            [ErrorAlert show];
        }
    }];
    
    
}

#pragma mark - <UITextViewDelegate>

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}

@end
