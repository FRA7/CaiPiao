//
//  FJBaseTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/6.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJBaseTableViewController.h"

@interface FJBaseTableViewController ()

@end

@implementation FJBaseTableViewController

//设置tableviewge格式 ---group 或者plain
-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
//懒加载
-(NSMutableArray *)groups{
    if (_groups == nil) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
 }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   //取出行组型数组
    FJSettingGroup *group = self.groups[section];
    return group.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FJSettingTableViewCell *cell = [FJSettingTableViewCell cellWithTableView:tableView];
    //从总数组中取出组模型
    FJSettingGroup *group = self.groups[indexPath.section];
    //从行模型数组中取出行模型
    FJSettingItem *item = group.items[indexPath.row];
    //传递模型
    cell.item = item;
    
    return cell;
}
//点击当前cell跳转至下一个页面
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //从总数粗中取出组模型
    FJSettingGroup *group = self.groups[indexPath.section];
    //取出行模型
    FJSettingItem *item = group.items[indexPath.row];
    
    if (item.operation) {
        item.operation(indexPath);
    }else if ([item isKindOfClass:[FJSettingArrowItem class]]){
        //当类型为箭头时跳转到下一个控制器
        //强制类型转换
        FJSettingArrowItem *arrowItem = (FJSettingArrowItem *)item;
       //如果有目标控制器
        if (arrowItem.desVC) {
            //拿到目标控制器
            UIViewController *viewC = [[arrowItem.desVC alloc] init];
            viewC.title = arrowItem.title;
            
            [self.navigationController pushViewController:viewC animated:YES];
        }
    }
}





//设置headerTitle
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
   //取出组模型
    FJSettingGroup *group = self.groups[section];
    return group.headerTitle;
}
//设置footerTitle
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    //取出组模型
    FJSettingGroup *group = self.groups[section];
    return group.footerTitle;
}
@end
