//
//  TableViewCell.h
//  MySpace
//
//  Created by Nuvvala on 5/10/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySpaceAudioBook.h"

@interface TableViewCell : UITableViewCell

@property(nonatomic,strong) IBOutlet UIImageView *imageview;
@property(nonatomic,strong) IBOutlet UILabel *titleLabel;
@property(nonatomic,strong) IBOutlet UILabel *subTitleLabel;

-(void)configureCellForIndexPath:(NSIndexPath *)indexPath;
-(void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBook;

@end
