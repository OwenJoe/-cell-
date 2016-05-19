//
//  DCTableViewCell.m
//  Cell代理点击事件
//
//  Created by owen on 16/5/10.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "DCTableViewCell.h"
#import "Masonry.h"

@implementation DCTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    [self initButtonMethod];
    return self;
}

#pragma mark -- 添加一个按钮
-(void)initButtonMethod{

    UIButton *btn = [[UIButton alloc]init];
    [self addSubview:btn];
    btn.backgroundColor = [UIColor yellowColor];
    [btn setTitle:@"请点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.mas_equalTo(10);
         make.bottom.mas_equalTo(-10);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
}

#pragma mark -- 点击事件
-(void)btnClick:(UIButton *)Method{

    if ([self.delegate respondsToSelector:@selector(cellClick:)]) {
        
        [self.delegate cellClick:self];
    }
}

@end
