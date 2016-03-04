//
//  FJSaveTool.m
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJSaveTool.h"

@implementation FJSaveTool


+(id)objectForKey:(NSString *)anAttribute{
    //获取当前版本号
    return [[NSUserDefaults standardUserDefaults] objectForKey:anAttribute];
}

+(void)setObject:(id)value forKey:(NSString *)defaultName{
    //保存当前版本号
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    //强制保存
    [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
