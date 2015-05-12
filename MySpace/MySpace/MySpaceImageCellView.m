//
//  MySpaceImageCellView.m
//  MySpace
//
//  Created by Kapil Rathan on 5/5/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import "MySpaceImageCellView.h"

@implementation MySpaceImageCellView

-(void)configureCellForIndexPath:(NSIndexPath *)indexPath {

    NSString *titleFromIndexPath = [NSString stringWithFormat:@"Title %ld",indexPath.row + 1];
    NSString *subtitlesFromIndexPath = [NSString stringWithFormat:@"SubTitle %ld",indexPath.row + 1];
    self.titleLabel.text = titleFromIndexPath;
    self.subTitleLabel.text = subtitlesFromIndexPath;
    
    
}

-(void)configureCellWithAudioBook:(MySpaceAudioBook *)audioBook {
    
    self.titleLabel.text = audioBook.title;
    self.subTitleLabel.text = audioBook.author;
    self.cellImage.image = audioBook.icon;
}

@end
