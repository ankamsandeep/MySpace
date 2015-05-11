//
//  TableViewCell.m
//  MySpace
//
//  Created by Nuvvala on 5/10/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)configureCellForIndexPath:(NSIndexPath *)indexPath
{
    NSString *titleString = [NSString stringWithFormat:@"Title %ld",indexPath.row+1];
    NSString *subTitleString = [NSString stringWithFormat:@"SubTitle %ld",indexPath.row+1];
    
    self.titleLabel.text=titleString;
    self.subTitleLabel.text=subTitleString;
}
-(void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBooks
{
    self.titleLabel.text=audioBooks.title;
    self.subTitleLabel.text=audioBooks.author;
    self.imageview.image=audioBooks.icon;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
