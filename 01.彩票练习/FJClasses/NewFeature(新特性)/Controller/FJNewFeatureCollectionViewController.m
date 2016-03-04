//
//  FJNewFeatureCollectionViewController.m
//  彩票
//
//  Created by Francis on 16/1/5.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import "FJNewFeatureCollectionViewController.h"
#import "FJNewFeatureCollectionViewCell.h"

@interface FJNewFeatureCollectionViewController ()

/** 偏差值*/
@property (nonatomic ,assign) CGFloat lastOffsetX;

/** 引导线*/
@property (nonatomic ,weak) UIImageView *guideImageView;
/**
 *  底部大标题
 */
@property (nonatomic, weak) UIImageView *guideLargeTextImageView;
/**
 *  底部小标题
 */
@property (nonatomic, weak) UIImageView *guideSmallTextImageView;

@end

@implementation FJNewFeatureCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init{
    //创建流水布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    //设置行间距
    flowLayout.minimumLineSpacing = 0;
    //设置每个item之间的间距
    flowLayout.minimumInteritemSpacing = 0;
    //设置每个cell的尺寸
    flowLayout.itemSize = [UIScreen mainScreen].bounds.size;
    //设置水平滚动
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return [super initWithCollectionViewLayout:flowLayout];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
    [self.collectionView registerClass:[FJNewFeatureCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    //设置分页
    self.collectionView.pagingEnabled = YES;
    //取消弹簧效果
    self.collectionView.bounces = NO;
    //隐藏滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    //设置图片内容
    [self setImageView];
    
}

-(void)setImageView{

    //设置内容图片
    UIImageView *guideImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    [self.collectionView addSubview:guideImageV];
//    guideImageV.x += 35;
    guideImageV.x = self.collectionView.width *0.1f;
    self.guideImageView = guideImageV;
    
    //设置guideline
    UIImageView *guidelineV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    [self.collectionView addSubview:guidelineV];
//    guidelineV.x -= 165;
    guidelineV.x -= self.collectionView.width *0.44f;
    
    //设置guideLargeText1
    UIImageView *guideLargeTextV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    [self.collectionView addSubview:guideLargeTextV];
    guideLargeTextV.center = CGPointMake(self.collectionView.width *0.5f, self.collectionView.height *0.7f);
    self.guideLargeTextImageView = guideLargeTextV;
    
    //设置guideSmallText1
    UIImageView *guideSmallTextV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    [self.collectionView addSubview:guideSmallTextV];
    guideSmallTextV.center = CGPointMake(self.collectionView.width *0.5f, self.collectionView.height *0.8f);
    self.guideSmallTextImageView = guideSmallTextV;
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    //每一页内容平移一个偏差
    //计算当前偏差
    CGFloat offsetX = scrollView.contentOffset.x;
    //计算页码
    NSInteger page = offsetX / scrollView.width + 1;
    //更换图片
    NSString *guideName = [NSString stringWithFormat:@"guide%ld",page];
    self.guideImageView.image = [UIImage imageNamed:guideName];
    //更换大标题
    NSString *guideLargeTextName = [NSString stringWithFormat:@"guideLargeText%ld",page];
    self.guideLargeTextImageView.image = [UIImage imageNamed:guideLargeTextName];
    //更换小标题
    NSString *guideSmallTextName = [NSString stringWithFormat:@"guideSmallText%ld",page];
    self.guideSmallTextImageView.image = [UIImage imageNamed:guideSmallTextName];
    //记录偏差
    // 偏差值
   
    CGFloat del = offsetX - self.lastOffsetX;
    
    self.guideImageView.x += del * 2;
    self.guideLargeTextImageView.x += del * 2;
    self.guideSmallTextImageView.x += del * 2;
    
    [UIView animateWithDuration:0.35f animations:^{
        self.guideImageView.x -= del;
        self.guideLargeTextImageView.x -= del;
        self.guideSmallTextImageView.x -= del;
    }];
   
    // 记录上次偏差
    self.lastOffsetX = offsetX;
    
    
}




#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //访问缓存
    FJNewFeatureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    
    cell.image = [UIImage imageNamed:imageName];
   
    //添加背景图片
//    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
//    UIImageView *backgroundImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
//    //设置imageView 尺寸
//    backgroundImageV.frame = cell.bounds;
//    [cell.contentView addSubview:backgroundImageV];
    
    [cell setIndexPath:indexPath count:4];
    
    return cell;
}


@end
