//
//  MySpaceForgotPasswordViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/6/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceForgotPasswordViewController.h"
#import <Parse/Parse.h>

@interface MySpaceForgotPasswordViewController ()

@end

@implementation MySpaceForgotPasswordViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismissForgotViewController:)];

    self.navigationItem.rightBarButtonItem = cancelButton;
}

#pragma mark - Instance Methods

- (void)dismissForgotViewController:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma  mark - Actions

- (IBAction)submitButtonPressed:(id)sender {
    
    NSString *email = self.emailTextField.text;
    
    if (!email.length > 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Please enter your email" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        
        return;
    }
    
    [PFUser requestPasswordResetForEmailInBackground:email];
    [self dismissForgotViewController:nil];
}


@end
