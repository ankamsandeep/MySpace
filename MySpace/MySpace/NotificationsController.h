//
//  NotificationsController.h
//  MySpace
//
//  Created by Kapil Rathan on 5/2/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationsController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
