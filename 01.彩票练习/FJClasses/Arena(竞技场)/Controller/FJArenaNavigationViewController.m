//
//  FJArenaNavigationViewController.m
//  彩票
//
//  Created by Francis on 16/1/5.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJArenaNavigationViewController.h"

@interface FJArenaNavigationViewController ()

@end

@implementation FJArenaNavigationViewController

+(void)initialize{
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    //设置拉伸的背景图片
    UIImage *image = [UIImage stretchableImageName:@"NLArenaNavBar64"];
 
    [bar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}




@end
