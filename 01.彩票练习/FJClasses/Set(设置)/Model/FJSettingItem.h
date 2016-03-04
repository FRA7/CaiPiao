//
//  FJSettingItem.h
//  彩票
//
//  Created by Francis on 16/1/7.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FJSettingItem : NSObject

/** 图片*/
@property (nonatomic ,strong) UIImage *image;
/** 标题*/
@property (nonatomic ,copy)NSString *title;
/** 子标题*/
@property (nonatomic ,copy)NSString *subTitle;


/** 点击当前cell*/
@property (nonatomic ,strong) void(^operation)(NSIndexPath *indexPath);




+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;

+ (instancetype)itemWithTitle:(NSString *)title;

@end
