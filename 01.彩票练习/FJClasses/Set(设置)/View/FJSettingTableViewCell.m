//
//  FJSettingTableViewCell.m
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSettingTableViewCell.h"

@implementation FJSettingTableViewCell



+(instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    static NSString *ID = @"cell";
    //访问缓存池
//    FJSettingTableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    FJSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    //如果没有就自己创建
    if (cell == nil) {
       cell = [[FJSettingTableViewCell alloc] initWithStyle:style reuseIdentifier:ID];
    }
    return cell;
}
+(instancetype)cellWithTableView:(UITableView *)tableView{
    return [self cellWithTableView:tableView style:UITableViewCellStyleValue1];

}

-(void)setItem:(FJSettingItem *)item{
    _item = item;
    self.imageView.image = item.image;
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subTitle;
    
    [self setUpRightView];
    
}
//设置右侧视图
-(void)setUpRightView{
    if ([_item isKindOfClass:[FJSettingArrowItem class]]) {
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }else if ([_item isKindOfClass:[FJSettingSwitchItem class]]){
        //强制类型转换
        FJSettingSwitchItem *swItem = (FJSettingSwitchItem *)_item;
        UISwitch *sw = [[UISwitch alloc] init];
        //设置开关状态
        sw.on = swItem.open;
        self.accessoryView =sw;
    }else{
        //注意:其余情况下设置为空
        self.accessoryView = nil;
    }
}

@end
