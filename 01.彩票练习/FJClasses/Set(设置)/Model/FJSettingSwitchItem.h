//
//  FJSettingSwitchItem.h
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSettingItem.h"

@interface FJSettingSwitchItem : FJSettingItem

/** 开关状态*/
@property (nonatomic ,assign,getter=isOpen) BOOL open;

@end
