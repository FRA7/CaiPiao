//
//  FJSettingTableViewCell.h
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FJSettingItem.h"
#import "FJSettingSwitchItem.h"
#import "FJSettingArrowItem.h"
#import "FJSettingGroup.h"

@interface FJSettingTableViewCell : UITableViewCell


+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

/** 行模型*/
@property (nonatomic ,strong) FJSettingItem *item;

@end
