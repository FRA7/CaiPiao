//
//  FJSettingViewController.m
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSettingViewController.h"
#import "MBProgressHUD+FJ.h"
#import "FJPushAndReminderTableViewController.h"

@interface FJSettingViewController ()

@end

@implementation FJSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    //加载第0组
    [self setUpGroup0];
    //加载第1组
    [self setUpGroup1];
    //加载第3组
    [self setUpGroup2];
}
//设置第0组
-(void)setUpGroup0{
    FJSettingArrowItem *item0 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    
    
    __weak typeof(self) weakSelf = self;
    
    item0.operation = ^(NSIndexPath *indexPath){
        UIViewController *vc =  [[UIViewController alloc] init];
        vc.title = @"使用兑换码";
        vc.view.backgroundColor = [UIColor cyanColor];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    
    
    
    //创建组模型
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item0]];
    
    
    
    [self.groups addObject:group];
}
//设置第1组
-(void)setUpGroup1{
    FJSettingArrowItem *item0 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"MorePush"] title:@"推送和提醒"];
    item0.desVC = [FJPushAndReminderTableViewController class];
    
    FJSettingSwitchItem *item1 = [FJSettingSwitchItem itemWithImage:[UIImage imageNamed:@"more_homeshake"] title:@"使用摇一摇机选"];
    item1.open = YES;
    
    FJSettingSwitchItem *item2 = [FJSettingSwitchItem itemWithImage:[UIImage imageNamed:@"sound_Effect"] title:@"声音效果"];
    FJSettingSwitchItem *item3 = [FJSettingSwitchItem itemWithImage:[UIImage imageNamed:@"More_LotteryRecommend"] title:@"购彩小助手"];
    //创建组模型
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item0,item1,item2,item3]];
    
    group.headerTitle = @"通用";
    group.footerTitle = @"在这里可以进行常规设置";
    
    [self.groups addObject:group];
}
//设置第2组
-(void)setUpGroup2{
    FJSettingArrowItem *item0 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreUpdate"] title:@"检查新版本"];
    item0.operation = ^(NSIndexPath *indexPath){
        [MBProgressHUD showSuccess:@"当前为最新版本"];
    };
    
    FJSettingArrowItem *item1 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreShare"] title:@"分享"];
    FJSettingArrowItem *item2 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreHelp"] title:@"帮助"];
    FJSettingArrowItem *item3 = [FJSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreAbout"] title:@"关于"];
    //创建组模型
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item0,item1,item2,item3]];
    
    [self.groups addObject:group];
}

@end
