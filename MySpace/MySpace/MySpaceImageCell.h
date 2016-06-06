//
//  MySpaceImageCell.h
//  MySpace
//
//  Created by Sandeep Ankam on 5/4/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySpaceAudioBook.h"

@interface MySpaceImageCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;


- (void)configureCellForIndexPath:(NSIndexPath *)indexPath;

- (void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBook;

@end
