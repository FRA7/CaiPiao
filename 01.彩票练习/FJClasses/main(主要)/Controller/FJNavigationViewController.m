//
//  FJNavigationViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJNavigationViewController.h"

@interface FJNavigationViewController ()

@end

@implementation FJNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(void)initialize{
    
//    //添加导航控制器
//    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:viewC];
//    viewC.navigationItem.title = title;
    
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[FJNavigationViewController class], nil];
    
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    //设置字体样式
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //颜色
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    //大小
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:22];
    [bar setTitleTextAttributes:dict];
    
    
    
    //设置导航条文字背景色为白色
    bar.tintColor = [UIColor whiteColor];
    //移除导航条返回按钮文字
    UIBarButtonItem *barButton = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
    
    [barButton setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -64) forBarMetrics:UIBarMetricsDefault];
}


#pragma mark - UIGestureRecognizerDelegate
// 返回YES收拾可以交互, 返回NO不能交互
//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
//    //    NSLog(@"%ld",self.childViewControllers.count);
//    // != 1 非跟控制器 > 1
//    return self.childViewControllers.count > 1;
//}

//非根控制器移除底部tabBar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count > 0) { // 非跟控制器就隐藏底部TabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
