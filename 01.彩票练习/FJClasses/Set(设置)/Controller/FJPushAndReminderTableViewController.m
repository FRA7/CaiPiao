//
//  FJPushAndReminderTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJPushAndReminderTableViewController.h"
#import "FJScorePushSettingTableViewController.h"
#import "FJLiveAwardSettingTableViewController.h"

@implementation FJPushAndReminderTableViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self setUpGroup];
}
-(void)setUpGroup{
    FJSettingArrowItem *item0 = [FJSettingArrowItem itemWithTitle:@"开奖推送"];
    item0.desVC = [FJScorePushSettingTableViewController class];

    
    FJSettingArrowItem *item1 = [FJSettingArrowItem itemWithTitle:@"比分直播"];
    item1.desVC = [FJLiveAwardSettingTableViewController class];
    
    FJSettingArrowItem *item2 = [FJSettingArrowItem itemWithTitle:@"中奖动画"];
    FJSettingArrowItem *item3 = [FJSettingArrowItem itemWithTitle:@"购彩大厅"];
    
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item0,item1,item2,item3]];
    
    [self.groups addObject:group];
    
}

@end
