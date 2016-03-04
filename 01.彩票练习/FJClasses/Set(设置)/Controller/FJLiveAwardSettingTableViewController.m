//
//  FJLiveAwardSettingTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJLiveAwardSettingTableViewController.h"

@implementation FJLiveAwardSettingTableViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self setUpGroup0];
    
    [self setUpGroup1];
    
    [self setUpGroup2];
}
-(void)setUpGroup0{
    FJSettingSwitchItem *item = [FJSettingSwitchItem itemWithTitle:@"关注比赛"];
    item.open = YES;
    
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item]];
    [self.groups addObject:group];
}
-(void)setUpGroup1{
    FJSettingItem *item = [FJSettingItem itemWithTitle:@"起始时间"];
    item.subTitle = @"00:00";
    
    
    //将block的指针更改为弱指针
    __weak typeof(self) weakSelf = self;
    item.operation = ^(NSIndexPath *indexPath){
        UITableViewCell *cell = [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        UITextField *textF = [[UITextField alloc] init];
        //设置textF为第一响应者
        [textF becomeFirstResponder];
        
        [cell addSubview:textF];
        
        
    };
    
    
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item]];
    [self.groups addObject:group];
}
-(void)setUpGroup2{
    FJSettingItem *item = [FJSettingItem itemWithTitle:@"结束时间"];
    item.subTitle = @"00:00";
    
    
    FJSettingGroup *group = [FJSettingGroup groupWithItems:@[item]];
    [self.groups addObject:group];
}

//添加滚动屏幕收起键盘
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}

@end
