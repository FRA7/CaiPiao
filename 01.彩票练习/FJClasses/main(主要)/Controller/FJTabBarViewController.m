//
//  FJTabBarViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJTabBarViewController.h"

#import "FJArenaViewController.h"
#import "FJDiscoverTableViewController.h"
#import "FJHallTableViewController.h"
#import "FJHistoryTableViewController.h"
#import "FJMyLotteryViewController.h"

#import "FJTabBar.h"
#import "FJNavigationViewController.h"
#import "FJArenaNavigationViewController.h"

@interface FJTabBarViewController ()<FJTabBarDelegate>
/** 控制器模型*/
@property (nonatomic ,strong) NSMutableArray *itemArray;
@end

@implementation FJTabBarViewController

-(NSMutableArray *)itemArray{
    if (_itemArray == nil) {
        NSMutableArray *itemArray = [NSMutableArray array];
        self.itemArray = itemArray;
    }
    return _itemArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控制器
    [self setAllChildViewController];
    //设置tabBar
    [self setUpTabBar];
    
}


-(void)setUpTabBar{
    
    /*****  方法一  *****/
    //移除系统的tabBar
    [self.tabBar removeFromSuperview];
    
    //添加自定义tabBar
    FJTabBar *fj_tabBar = [[FJTabBar alloc] init];
    //将自定义tabBar添加到控制器view上
    [self.view addSubview:fj_tabBar];
    
    //设置自定义tabBar的frame
    CGFloat X = 0;
    CGFloat Y = [UIScreen mainScreen].bounds.size.height - self.tabBar.bounds.size.height;
    CGFloat W = self.tabBar.bounds.size.width;
    CGFloat H = self.tabBar.bounds.size.height;
    fj_tabBar.frame = CGRectMake(X, Y, W, H);

    fj_tabBar.fj_tabBarItems = self.itemArray;
    fj_tabBar.delegate = self;
    
   
    /*****  方法二  *****/

    //添加自定义tabBar
    /*
    FJTabBar *fj_tabBar = [[FJTabBar alloc] init];
    //设置自定义tabBar的frame和原有bar一致
    fj_tabBar.frame = self.tabBar.bounds;

    fj_tabBar.fj_tabBarItems = self.itemArray;
    fj_tabBar.delegate = self;
    //将tabBar添加到系统原有的Bar上
    [self.tabBar addSubview:fj_tabBar];
  */
}

//-(void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    for (UIView *view in self.tabBar.subviews) {
//        if (![view isKindOfClass:[FJTabBar class]]) {
//            [view removeFromSuperview];
//        }
//    }
//    
//}

#pragma mark - 执行代理方法
-(void)tabBar:(FJTabBar *)tabBar index:(NSInteger)index{
    self.selectedIndex = index;
}


-(void)setAllChildViewController{
    //1.购彩大厅
    FJHallTableViewController *fj_hall = [[FJHallTableViewController alloc] init];
//    fj_hall.view.backgroundColor = [UIColor purpleColor];
    [self setOneChildViewController:fj_hall withImage:[UIImage imageNamed:@"TabBar_Hall_new"] andSelectImage:[UIImage imageNamed:@"TabBar_Hall_selected_new"] title:@"购彩大厅"];
    //2.竞技场
    FJArenaViewController *fj_arena = [[FJArenaViewController alloc] init];
//    fj_arena.view.backgroundColor = [UIColor greenColor];
    [self setOneChildViewController:fj_arena withImage:[UIImage imageNamed:@"TabBar_Arena_new"] andSelectImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:nil];
    //3.发现
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"FJDiscoverTableViewController" bundle:nil];
    
//    FJDiscoverTableViewController *fj_discover = [[FJDiscoverTableViewController alloc] init];
    //加载storyBoard
    FJDiscoverTableViewController *fj_discover = [storyboard instantiateInitialViewController];
//    fj_discover.view.backgroundColor = [UIColor orangeColor];
    [self setOneChildViewController:fj_discover withImage:[UIImage imageNamed:@"TabBar_Discovery_new"] andSelectImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    //4.开奖信息
    FJHistoryTableViewController *fj_history = [[FJHistoryTableViewController alloc] init];
//    fj_history.view.backgroundColor = [UIColor blueColor];
    [self setOneChildViewController:fj_history withImage:[UIImage imageNamed:@"TabBar_History_new"] andSelectImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];
    //5.我的彩票
    FJMyLotteryViewController *fj_myLottery = [[FJMyLotteryViewController alloc] init];
//    fj_myLottery.view.backgroundColor = [UIColor yellowColor];
    [self setOneChildViewController:fj_myLottery withImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] andSelectImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"我的彩票"];
    
}

-(void)setOneChildViewController:(UIViewController *)viewC withImage:(UIImage *)image andSelectImage:(UIImage *)selcetImage title:(NSString *)title{
    
    //添加导航控制器
    UINavigationController *navC = [[FJNavigationViewController alloc] initWithRootViewController:viewC];
   //如果控制器是竞技场类型,则是设置导航条为竞技场类型
    if ([viewC isKindOfClass:[FJArenaViewController class]]) {
        navC = [[FJArenaNavigationViewController alloc] initWithRootViewController:viewC];
    }
    
    viewC.navigationItem.title = title;
    
//    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
//    
//    //设置字体样式
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    //颜色
//    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
//    //大小
//    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:22];
//    [navC.navigationBar setTitleTextAttributes:dict];
    
    
    
    
    [self addChildViewController:navC];
    viewC.tabBarItem.image = image;
    viewC.tabBarItem.selectedImage = selcetImage;
    
    //把控制器中的模型添加到数组中
    [self.itemArray addObject:viewC.tabBarItem];
}

@end
