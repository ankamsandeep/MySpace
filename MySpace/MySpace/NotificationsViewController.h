//
//  NotificationsViewController.h
//  MySpace
//
//  Created by Sandeep Ankam on 5/3/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
