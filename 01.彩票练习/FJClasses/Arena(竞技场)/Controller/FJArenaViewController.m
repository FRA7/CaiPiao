//
//  FJArenaViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJArenaViewController.h"

@interface FJArenaViewController ()

@end

@implementation FJArenaViewController

-(void)loadView{
    //添加背景图片
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    backgroundImageView.image = [UIImage imageNamed:@"NLArenaBackground"];
    //设置用户交互
    backgroundImageView.userInteractionEnabled = YES;
    self.view = backgroundImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //添加segmentedcontrol
    UISegmentedControl *segmentC = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
    self.navigationItem.titleView = segmentC;
    
    //设置字体
    //设置字体样式
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //颜色
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    //大小
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:15];
    [segmentC setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    
    
    
    //设置背景图片
    [segmentC setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmentC setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    //默认情况下选中第0项
    segmentC.selectedSegmentIndex = 0;
    
    
    
    // 设置前景色
//    segmentC.tintColor = [UIColor colorWithRed:0 green:142/255.0f blue:143/255.0f alpha:1];

    //     segmentC.tintColor = [UIColor redColor];
    
}



@end
