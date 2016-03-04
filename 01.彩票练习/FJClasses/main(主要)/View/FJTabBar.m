//
//  FJTabBar.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJTabBar.h"
#import "FJTabBarButton.h"

@interface FJTabBar()

/** 记录选中的按钮*/
@property (nonatomic ,weak) UIButton *tabBarSelectedButtom;

@end

@implementation FJTabBar


-(void)setFj_tabBarItems:(NSArray *)fj_tabBarItems{
    
    _fj_tabBarItems = fj_tabBarItems;
    for (UITabBarItem *item in fj_tabBarItems) {
        //父类调用子类---多态
        UIButton *tabBarButton = [[FJTabBarButton alloc] init];
        //将按钮添加到tabBar上
        [self addSubview:tabBarButton];
        //设置正常状态下的按钮图片
        [tabBarButton setBackgroundImage:item.image forState:UIControlStateNormal];
        //设置选中状态下的按钮图片
        [tabBarButton setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        //监听按钮点击
        [tabBarButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
        
    }

}

/**
 *  点击按钮时调用
 */
-(void)buttonClick:(UIButton *)button{
    self.tabBarSelectedButtom.selected = NO;
    button.selected = YES;
    self.tabBarSelectedButtom = button;
    
    //通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:index:)]) {
        [self.delegate tabBar:self index:button.tag];
    }
    
}
-(void)layoutSubviews{
    [super layoutSubviews];
    
    //调整子控件的frame
    CGFloat buttomX = 0;
    CGFloat buttomY = 0;
    CGFloat buttomW = self.frame.size.width/self.subviews.count;
    CGFloat buttomH = self.frame.size.height;
    
    int i = 0;
    for (UIButton *button in self.subviews) {
        buttomX = i * buttomW;
        button.tag = i;
        button.frame = CGRectMake(buttomX, buttomY, buttomW, buttomH);
        
        //button默认选择第一个
        if (i == 0) {
            button.selected =YES;
            self.tabBarSelectedButtom = button;
        }
        i++;
    }
}
@end
