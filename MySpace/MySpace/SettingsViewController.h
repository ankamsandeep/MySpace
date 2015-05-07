//
//  SettingsViewController.h
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;


@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

- (IBAction)signoutButtonPressed:(id)sender;

@end
