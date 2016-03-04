//
//  FJNewFeatureCollectionViewCell.h
//  彩票
//
//  Created by Francis on 16/1/6.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FJNewFeatureCollectionViewCell : UICollectionViewCell

/** 背景图片*/
@property (nonatomic ,strong) UIImage *image;


- (void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count;

@end
