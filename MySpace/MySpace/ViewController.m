//
//  ViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 4/26/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "ViewController.h"
#import "RegitrationController.h"
#import "HomeController.h"
#import "Parse/Parse.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *myusername = self.UserName.text;
    NSString *mypassword = self.Password.text;
    
    [PFUser logInWithUsernameInBackground:myusername password:mypassword
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            // Do stuff after successful login.
                                            UIAlertView *ErrorAlert = [[UIAlertView alloc]initWithTitle:@"Login Successful" message:@"Welcome to Myspace" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                                            [ErrorAlert show];
                                            
                                            HomeController *homeview = [[HomeController alloc] initWithNibName:@"HomeController" bundle:nil];
                                            
                                            [self presentViewController:homeview animated:YES completion:nil];
                                            
                                            
                                            
                                        } else {
                                            // The login failed. Check error to see why.
                                
                                            NSString *errorString = [error userInfo][@"error"];
                                            // Show the errorString somewhere and let the user try again.
                                            UIAlertView *ErrorAlert = [[UIAlertView alloc]initWithTitle:@"Error during Login" message:errorString delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                                            [ErrorAlert show];
                                            
                                        }
                                    }];
    
}
- (IBAction)signupButtonPressed:(UIButton *)sender {
    

   RegitrationController *regview = [[RegitrationController alloc] initWithNibName:@"RegistrationController" bundle:nil];
   
    [self presentViewController:regview animated:YES completion:nil];
    
}

- (IBAction)forgotPasswordLinkPressed:(UIButton *)sender {
}
@end
