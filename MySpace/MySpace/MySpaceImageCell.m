//
//  MySpaceImageCell.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/4/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceImageCell.h"

@implementation MySpaceImageCell


- (void)configureCellForIndexPath:(NSIndexPath *)indexPath {
    
    NSString *titleFromIndexPath = [NSString stringWithFormat:@"Title %ld", indexPath.row + 1];

    NSString *subtitleFromIndexPath = [NSString stringWithFormat:@"Subtitle %ld", indexPath.row + 1];

    self.titleLabel.text = titleFromIndexPath;
    self.subTitleLabel.text = subtitleFromIndexPath;
}


- (void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBook {
    
    self.titleLabel.text = audioBook.title;
    self.subTitleLabel.text = audioBook.author;
    self.cellImage.image = audioBook.icon;
}

@end
