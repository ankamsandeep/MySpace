//
//  ViewController.m
//  MySpace
//
//  Created by Sandeep Ankam on 4/26/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "ViewController.h"
#import "RegitrationController.h"

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
}
- (IBAction)signupButtonPressed:(UIButton *)sender {
    

   RegitrationController *regview = [[RegitrationController alloc] initWithNibName:@"RegistrationController" bundle:nil];
   
    [self presentViewController:regview animated:YES completion:nil];
    
}

- (IBAction)forgotPasswordLinkPressed:(UIButton *)sender {
}
@end
