//
//  FJScorePushSettingTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJScorePushSettingTableViewController.h"

@implementation FJScorePushSettingTableViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self setUpGroup];
}

-(void)setUpGroup{
    FJSettingSwitchItem *item0 = [FJSettingSwitchItem itemWithTitle:@"单色球"];
    item0.subTitle = @"每天开奖";
    FJSettingSwitchItem *item1 = [FJSettingSwitchItem itemWithTitle:@"双色球"];
    item1.subTitle = @"每周开奖";
    item1.open = YES;
    FJSettingSwitchItem *item2 = [FJSettingSwitchItem itemWithTitle:@"大乐透"];
    item2.subTitle = @"每天开奖";
    FJSettingSwitchItem *item3 = [FJSettingSwitchItem itemWithTitle:@"刮刮乐"];
    item3.subTitle = @"每天开奖";
    
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item0,item1,item2,item3]];
    [self.groups addObject:group];
}

//重写cell方法,设置cell格式
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    FJSettingTableViewCell *cell = [FJSettingTableViewCell cellWithTableView:tableView];
    FJSettingTableViewCell *cell = [FJSettingTableViewCell cellWithTableView:tableView style:UITableViewCellStyleSubtitle];
    //设置字体大小
    cell.detailTextLabel.font = [UIFont systemFontOfSize:10];
    
    
    //从总数组中取出组模型
    FJSettingGroup *group = self.groups[indexPath.section];
    //从行模型数组中取出行模型
    FJSettingItem *item = group.items[indexPath.row];
    //传递模型
    cell.item = item;
    
    return cell;
}

@end
