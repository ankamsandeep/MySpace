//
//  ViewController.h
//  MySpace
//
//  Created by Sandeep Ankam on 4/26/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *UserName;
@property (weak, nonatomic) IBOutlet UITextField *Password;
- (IBAction)loginButtonPressed:(UIButton *)sender;
- (IBAction)signupButtonPressed:(UIButton *)sender;
- (IBAction)forgotPasswordLinkPressed:(UIButton *)sender;

@end

