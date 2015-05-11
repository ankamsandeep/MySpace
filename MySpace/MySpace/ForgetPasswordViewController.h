//
//  ForgetPasswordViewController.h
//  MySpace
//
//  Created by Nuvvala on 5/9/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgetPasswordViewController : UIViewController

@property(nonatomic,strong) IBOutlet UITextField *emaildId;

-(IBAction)completeButtonPressed:(id)sender;
-(IBAction)cancleButtonPressed:(id)sender;

@end
