//
//  FJTabBar.h
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FJTabBar;
//设置代理
@protocol FJTabBarDelegate <NSObject>

-(void)tabBar:(FJTabBar *)tabBar index:(NSInteger)index;

@end

@interface FJTabBar : UIView

/** 模型数组*/
@property (nonatomic ,strong) NSArray *fj_tabBarItems;
/** 代理*/
@property (nonatomic ,weak) id<FJTabBarDelegate> delegate;
@end
