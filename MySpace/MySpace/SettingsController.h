//
//  SettingsController.h
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *SettingsFirstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *SettingsLastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *SettingsEmailLabel;
@property (weak, nonatomic) IBOutlet UILabel *SettingsUserNameLabel;
- (IBAction)SettingsSignoutButton:(UIButton *)sender;

@end
