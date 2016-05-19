//
//  DCTableViewCell.h
//  Cell代理点击事件
//
//  Created by owen on 16/5/10.
//  Copyright © 2016年 owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DCTableViewCell;
@protocol DCTableViewCellDelegate <NSObject>

-(void)cellClick:(DCTableViewCell*)Method;

@end

@interface DCTableViewCell : UITableViewCell

@property (nonatomic,weak)id<DCTableViewCellDelegate>delegate;

//用于获取cell的IndexPath
@property (nonatomic,assign) NSIndexPath* indexPC;

@end
