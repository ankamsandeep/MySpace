//
//  SettingsViewController.h
//  MySpace
//
//  Created by Nuvvala on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property(nonatomic,strong) IBOutlet UILabel *firstNameLabel;
@property(nonatomic,strong) IBOutlet UILabel *lastNameLabel;
@property(nonatomic,strong) IBOutlet UILabel *usernameLabel;;
@property(nonatomic,strong) IBOutlet UILabel *emailLabel;

-(IBAction)pressedSignOutButtton:(id)sender;

@end
