//
//  FJHallTableViewController.m
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJHallTableViewController.h"
#import "UIImage+FJ.h"
#import "FJCoverView.h"
#import "FJPopMenu.h"

@interface FJHallTableViewController ()<FJPopMenuDelegate>

@end

@implementation FJHallTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加的导航条活动按钮
    UIImage *image = [UIImage imageWithRenderingName:@"CS50_activity_image"];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonClick)];
    
}

-(void)leftBarButtonClick{
//    NSLog(@"leftBarButtonClick-------");
   //显示蒙版
    [FJCoverView show];
    //显示菜单
    FJPopMenu *popMenu = [FJPopMenu showInCenter:self.view.center];
    popMenu.delegate = self;
}
#pragma mark - 执行代理方法
-(void)popMenuDidClick:(FJPopMenu *)popMenu{
    
    
    void(^completion)()=^(){
        //移除蒙版
        [FJCoverView hide];
    };
   
    //菜单移除后移除蒙板
    [popMenu hideInCenter:CGPointMake(44, 44) completion:completion];
    
}

//添加执行动画
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
