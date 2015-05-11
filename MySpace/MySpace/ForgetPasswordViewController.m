//
//  ForgetPasswordViewController.m
//  MySpace
//
//  Created by Nuvvala on 5/9/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "ForgetPasswordViewController.h"
#import <Parse/Parse.h>

@interface ForgetPasswordViewController ()

@end

@implementation ForgetPasswordViewController

#pragma mark - ActionMethod

-(IBAction)completeButtonPressed:(id)sender
{
    NSString *email = self.emaildId.text;
    if (email.length==0) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Warning" message:@"enter your emailId" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alertView show];
    }else{
       [PFUser requestPasswordResetForEmailInBackground:email];
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    }
}

#pragma mark - ActionMethod

-(IBAction)cancleButtonPressed:(id)sender
{
[self dismissViewControllerAnimated:YES completion:^{
    
}];
}

@end
