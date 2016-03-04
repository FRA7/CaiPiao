//
//  FJNewFeatureCollectionViewCell.m
//  彩票
//
//  Created by Francis on 16/1/6.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJNewFeatureCollectionViewCell.h"
#import "FJTabBarViewController.h"

@interface FJNewFeatureCollectionViewCell()

//定义开始体验按钮属性
/** 开始体验按钮*/
@property (nonatomic ,strong) UIButton *startButton;

/** 背景图片*/
@property (nonatomic ,strong) UIImageView *backgroundImageView;

@end

@implementation FJNewFeatureCollectionViewCell

//懒加载开始体验按钮
-(UIButton *)startButton{
    if (_startButton == nil) {
        UIButton *button = [[UIButton alloc] init];
        
        _startButton = button;
        [button setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        
        [button sizeToFit];
        [button setCenter:CGPointMake(self.contentView.width * 0.5, self.contentView.height * 0.9)];
        //添加按钮点击事件
        [button addTarget:self action:@selector(startButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:button];
    }
    return _startButton;
}
//设置按钮点击方法
-(void)startButtonClick:(UIButton *)button{
    //切换根控制器
    FJTabBarViewController *tabBarVC = [[FJTabBarViewController alloc]init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabBarVC;
    
}
//懒加载背景图片View
- (UIImageView *)backgroundImageView{
    if (!_backgroundImageView) {
        _backgroundImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_backgroundImageView];
    }
    return _backgroundImageView;
}

//重写setter方法设置背景图片
- (void)setImage:(UIImage *)image{
    _image = image;
    // 设置image
    self.backgroundImageView.image = image;
}
- (void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count{
    // 当时最后一个cell的时候,就添加立即体验按钮
    if (indexPath.item + 1 == count) { // 最后一个cell
        // 添加立即体验按钮
        self.startButton.hidden = NO;
    }else{ // 不是最后一个cell
        // 隐藏立即体验按钮
        self.startButton.hidden = YES;
    }
}


@end
