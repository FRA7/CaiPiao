//
//  UIImage+FJ.h
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FJ)


/**
 *  加载图片不渲染
 *
 *  @param name 图片名称
 *
 *  @return 不渲染的图片
 */
+(UIImage *)imageWithRenderingName:(NSString *)name;
/**
 *  加载图片从中间点拉伸填充
 *
 *  @param name 图片名称
 *
 *  @return 从中间点拉伸的图片
 */
+(UIImage *)stretchableImageName:(NSString *)name;
@end
