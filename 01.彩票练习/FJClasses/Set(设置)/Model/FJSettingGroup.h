//
//  FJSettingGroup.h
//  彩票
//
//  Created by Francis on 16/1/6.
//  Copyright © 2016年 FRAJ. All rights reserved.
//  组模型    1.这一组有多行,并且每一行要显示什么东西, 2. 头部标题, 3.尾部标题

#import <Foundation/Foundation.h>

@interface FJSettingGroup : NSObject

/** 行模型数组*/
@property (nonatomic ,strong) NSArray *items;
/** 头部标题*/
@property (nonatomic ,copy)NSString *headerTitle;
/** 尾部标题*/
@property (nonatomic ,copy)NSString *footerTitle;

//提供类方法创建group对象
+(instancetype)groupWithItems:(NSArray *)items;

@end
