//
//  UIView+StringTag.m
//
//  Created by 刘子洋 on 15/8/18.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "UIView+StringTag.h"
#import <objc/runtime.h> 

static const void *tagKey = &tagKey;

@implementation UIView (StringTag)

- (void)setTagString:(NSString *)tagString
{
    objc_setAssociatedObject(self, tagKey, tagString,OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (id)tagString
{
    return objc_getAssociatedObject(self, tagKey);
}

- (UIView *)viewWithStringTag:(NSString *)strTag{
    if ([self.tagString isEqual:strTag]){
        return self;
    }
    if (!self.subviews.count){
        return nil;
    }
    for (UIView *subview in self.subviews){
        UIView *targetView = [subview viewWithStringTag:strTag];
        if (targetView){
            return targetView;
        }
    }
    return nil;
}

@end
