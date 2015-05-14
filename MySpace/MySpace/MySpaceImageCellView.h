//
//  MySpaceImageCellView.h
//  MySpace
//
//  Created by Kapil Rathan on 5/5/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySpaceAudioBook.h"

@interface MySpaceImageCellView : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;

-(void)configureCellForIndexPath:(NSIndexPath *)indexPath;

-(void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBook;

@end
