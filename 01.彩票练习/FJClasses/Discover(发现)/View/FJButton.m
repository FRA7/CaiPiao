//
//  FJButton.m
//  彩票
//
//  Created by Francis on 16/1/5.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJButton.h"

@implementation FJButton

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //判断如果按钮中图片在左边,则改变图片和文字位置
    if (self.imageView.x < self.titleLabel.x) {
        //调整label位置
        self.titleLabel.x = self.imageView.x;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
    }
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    //自动计算尺寸
    [self sizeToFit];
}

-(void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    [self sizeToFit];
}
@end

