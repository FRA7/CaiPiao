//
//  FJCoverView.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//
#define FJKeyWindow [UIApplication sharedApplication].keyWindow

#import "FJCoverView.h"

@implementation FJCoverView

+(void)show{
    FJCoverView *cover = [[self alloc] init];
    cover.frame = [UIScreen mainScreen].bounds;
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.7f;
    
    [FJKeyWindow addSubview:cover];
}
+(void)hide{
    //遍历当前view中的子控件,如果是FJCoverView类型就移除
    for (UIView *view in FJKeyWindow.subviews) {
        if ([view isKindOfClass:[FJCoverView class]]) {
            [view removeFromSuperview];
            break;
        }
    }
}

@end
