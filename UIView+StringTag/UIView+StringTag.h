//
//  UIView+StringTag.h
//
//  Created by 刘子洋 on 15/8/18.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (StringTag)
@property(nonatomic, copy) NSString *tagString;

- (UIView *)viewWithStringTag:(NSString *)strTag;

@end
