//
//  MySpaceAudioBook.h
//  MySpace
//
//  Created by Nuvvala on 5/7/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MySpaceAudioBook : NSObject

@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *author;
@property(nonatomic,strong) NSString *imageURL;
@property(nonatomic,strong) UIImage  *icon;

-(instancetype)initWithTitle:(NSString *)title author:(NSString *)author imageURL:(NSString *)imageURL;

@end
