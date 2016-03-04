//
//  FJSettingItem.m
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSettingItem.h"

@implementation FJSettingItem

+(instancetype)itemWithImage:(UIImage *)image title:(NSString *)title{
    FJSettingItem *item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title{
    return [self itemWithImage:nil title:title];
}

@end
