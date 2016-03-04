//
//  FJDiscoverTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJDiscoverTableViewController.h"

@interface FJDiscoverTableViewController ()

@end

@implementation FJDiscoverTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}


@end
