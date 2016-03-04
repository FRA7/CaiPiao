//
//  FJBuyViewController.m
//  彩票
//
//  Created by Francis on 16/1/5.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJBuyViewController.h"
#import "FJButton.h"

@interface FJBuyViewController ()

@end

@implementation FJBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置title
    UIButton *button = [[FJButton alloc] init];
    [button setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    [button setTitle:@"全部种类" forState:UIControlStateNormal];
    
    [button sizeToFit];
    self.navigationItem.titleView = button;
    
}



@end
