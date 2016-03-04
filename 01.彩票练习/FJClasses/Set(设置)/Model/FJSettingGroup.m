//
//  FJSettingGroup.m
//  彩票
//
//  Created by Francis on 16/1/6.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSettingGroup.h"

@implementation FJSettingGroup


+(instancetype)groupWithItems:(NSArray *)items{
    FJSettingGroup *group = [[FJSettingGroup alloc] init];
    group.items = items;
    return group;
}

@end
