//
//  FJSaveTool.h
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FJSaveTool : NSObject

//取出当前版本号
+(id)objectForKey:(NSString *)anAttribute;
//保存当前版本号
+(void)setObject:(id)value forKey:(NSString *)defaultName;

@end
