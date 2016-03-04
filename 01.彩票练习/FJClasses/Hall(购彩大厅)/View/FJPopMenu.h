//
//  FJPopMenu.h
//  彩票
//
//  Created by Francis on 16/1/4.
//  Copyright © 2016年 FRAJ. All rights reserved.
//

typedef void(^FJBlock)();

#import <UIKit/UIKit.h>
@class FJPopMenu;
@protocol  FJPopMenuDelegate<NSObject>

@optional//可选
-(void)popMenuDidClick:(FJPopMenu *)popMenu;

@end

@interface FJPopMenu : UIView


+(instancetype)showInCenter:(CGPoint)center;

-(void)hideInCenter:(CGPoint)center completion:(FJBlock)completion;
/** 设置代理*/
@property (nonatomic ,weak) id<FJPopMenuDelegate> delegate;
@end
