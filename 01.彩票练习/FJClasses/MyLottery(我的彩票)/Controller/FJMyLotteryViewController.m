//
//  FJMyLotteryViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJMyLotteryViewController.h"
#import "FJSettingViewController.h"
//#import "UIImage+FJ.h"

@interface FJMyLotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *logInButton;

@end

@implementation FJMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置按钮背景拉伸
    UIImage *image = self.logInButton.currentBackgroundImage;
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    [self.logInButton setBackgroundImage:image forState:UIControlStateNormal];
    
    //设置导航条左侧按钮
    UIButton *button = [[UIButton alloc] init];
    [button setImage:[UIImage imageWithRenderingName:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    [button setTitle:@"客服" forState:UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    //设置导航条右侧按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithRenderingName:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClick)];
    
    
}

-(void)rightBarButtonClick{
    //跳转至设置界面
    FJSettingViewController *setting = [[FJSettingViewController alloc] init];
    [self.navigationController pushViewController:setting animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
