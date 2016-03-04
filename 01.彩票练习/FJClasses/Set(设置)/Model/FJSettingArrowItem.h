//
//  FJSettingArrowItem.h
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
// 跳转目标控制器 1.绑定类名字符串 2.绑定类名

#import "FJSettingItem.h"

@interface FJSettingArrowItem : FJSettingItem

/** 目标控制器类名*/
@property (nonatomic ,assign)Class desVC;
@end
