//
//  FJRootViewControllerTool.m
//  彩票
//
//  Created by Francis on 16/1/8.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJRootViewControllerTool.h"
#import "FJTabBarViewController.h"
#import "FJNewFeatureCollectionViewController.h"
#import "FJSaveTool.h"

@implementation FJRootViewControllerTool

+(UIViewController *)chooseRootViewController{

    
    
#define FJVersion @"version"
    //先判断版本,设置根控制器
    UIViewController *rootVC;
   // /*   调试模式__一
     //取出当前版本号
     NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
     
     //取出上一次保存的版本号
    NSString *lastVersion = [FJSaveTool objectForKey:FJVersion];
    
    //如果没有新版本,直接进入主控制器
     if ([currentVersion isEqualToString:lastVersion]) {
  //   */
    rootVC = [[FJTabBarViewController alloc] init];
  //  /*   调试模式__二
     }else{
     
     //如果有新版本,进入新特新页
     rootVC = [[FJNewFeatureCollectionViewController alloc] init];

     //保存当前版本号
    [FJSaveTool setObject:currentVersion forKey:FJVersion];
     
     }
   //  */
    return rootVC;
}

@end
