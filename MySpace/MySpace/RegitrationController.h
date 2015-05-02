//
//  RegitrationController.h
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegitrationController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *RegistrationFirstName;
@property (weak, nonatomic) IBOutlet UITextField *RegistrationLastName;
@property (weak, nonatomic) IBOutlet UITextField *RegistrationEmail;
@property (weak, nonatomic) IBOutlet UITextField *RegistrationUsername;
@property (weak, nonatomic) IBOutlet UITextField *RegistrationPassword;
- (IBAction)RegistrationButton:(UIButton *)sender;

@end
