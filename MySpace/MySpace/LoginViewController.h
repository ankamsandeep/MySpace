//
//  MyLogin.h
//  MySpace
//
//  Created by Vikram Reddy Velma on 4/27/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLogin : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextFiled;

- (IBAction)signInButtonPressed:(id)sender;

- (IBAction)signUpButtonPressed:(id)sender;

- (IBAction)forgotPasswordPressed:(id)sender;

@end
