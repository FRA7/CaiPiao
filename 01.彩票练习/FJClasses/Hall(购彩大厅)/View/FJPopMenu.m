//
//  FJPopMenu.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//
#define FJKeyWindow [UIApplication sharedApplication].keyWindow
#import "FJPopMenu.h"

@implementation FJPopMenu
- (IBAction)closeButtonClick:(id)sender {
    if ([self.delegate respondsToSelector:@selector(popMenuDidClick:)]) {
        [self.delegate popMenuDidClick:self];
    }
}

+(instancetype)showInCenter:(CGPoint)center{
    UIView *popMenu = [[NSBundle mainBundle] loadNibNamed:@"FJPopMenu" owner:self options:nil][0];
    [FJKeyWindow addSubview:popMenu];
    popMenu.center = center;
    return popMenu;
}

-(void)hideInCenter:(CGPoint)center completion:(FJBlock)completion{
    [UIView animateWithDuration:0.5f animations:^{
        self.center = center;
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        //判断有无蒙板,有就移除
        if (completion) {
            completion();
        }
    }];
}
@end
