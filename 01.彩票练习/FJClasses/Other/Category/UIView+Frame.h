//
//  UIView+Frame.h
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

// 在分类中@property 只会生成get set 方法, 并不会生成下划线的成员属性

@property (nonatomic, assign) CGFloat width;


@property (nonatomic, assign) CGFloat height;


@property (nonatomic, assign) CGFloat x;


@property (nonatomic, assign) CGFloat y;





//- (CGFloat)width;
//
//- (void)setWidth:(CGFloat)width;

//- (CGFloat)height;
//
//- (void)setHeight:(CGFloat)height;
//
//- (CGFloat)x;
//
//- (void)setX:(CGFloat)x;

@end
