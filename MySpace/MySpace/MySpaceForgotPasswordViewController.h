//
//  MySpaceForgotPasswordViewController.h
//  MySpace
//
//  Created by Sandeep Ankam on 5/6/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MySpaceForgotPasswordViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

- (IBAction)submitButtonPressed:(id)sender;

@end
