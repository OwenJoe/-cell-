//
//  ViewController.m
//  Cell代理点击事件
//
//  Created by owen on 16/5/10.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "ViewController.h"
#import "DCTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,DCTableViewCellDelegate>

@property (nonatomic,strong) UITableView *dcTableView;
@end

@implementation ViewController

-(UITableView *)dcTableView{

    if (!_dcTableView) {
        _dcTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        _dcTableView.delegate = self;
        _dcTableView.dataSource =self;
    }
    return _dcTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.dcTableView];
    
//    //代理
//    DCTableViewCell *dcCell = [[DCTableViewCell alloc]init];
//    dcCell.delegate =self;
}

-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 15;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *iDs = @"cell";
    DCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iDs];
    if (!cell) {

        cell = [[DCTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iDs];
   
    }
    
#warning cell的代理必须写在这里,不能在viewDidLoad中
    cell.delegate = self;
    //将indexPath赋值
    cell.indexPC = indexPath;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 44;
}


#pragma mark -- cell代理方法
-(void)cellClick:(DCTableViewCell*)Method{

    NSLog(@"%@",Method.indexPC);
    NSLog(@"点击了第几个cell--%ld",Method.indexPC.row);
}













@end
