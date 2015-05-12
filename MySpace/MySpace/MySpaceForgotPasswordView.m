//
//  MySpaceForgotPasswordView.m
//  MySpace
//
//  Created by Kapil Rathan on 5/12/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceForgotPasswordView.h"
#import <Parse/Parse.h>

@interface MySpaceForgotPasswordView ()

@end

@implementation MySpaceForgotPasswordView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismissForgotViewController:)];
    
    self.navigationItem.rightBarButtonItem = cancelButton;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Instance Methods

- (void)dismissForgotViewController:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma  mark - Actions

- (IBAction)submitButtonPressed:(UIButton *)sender {
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
