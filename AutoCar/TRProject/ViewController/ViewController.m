//
//  ViewController.m
//  TRProject
//
//  Created by jiyingxin on 16/2/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "AutoCarTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *myTableView;
@property(nonatomic) InfoListViewModel *autoCarList;
@end

@implementation ViewController
//界面切换时，停止当前页面的网络活动，防止卡顿
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self.autoCarList suspendTask];
}
//界面显示时，恢复网络活动
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.autoCarList resumeTask];
}
#pragma mark - UITableView Delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.autoCarList rowCount];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AutoCarTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.iconIV setImageWithURL:[self.autoCarList picUrlAtRow:indexPath.row]];
    cell.titleLabel.text = [self.autoCarList titleAtRow:indexPath.row];
    cell.timeLabel.text = [self.autoCarList timeAtRow:indexPath.row];
    cell.replyCountLabel.text = [self.autoCarList replyCountAtRow:indexPath.row];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
    return tableView.estimatedRowHeight;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma mark - 生命周期 LifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self myTableView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 方法 Method
- (void)getDataListWithType:(InfoListType)infpListType{
    WK(weakSelf);
    [_myTableView addHeaderRefresh:^{
        [weakSelf.autoCarList getDataWithRequestType:RequestModelRefresh infoListType:infpListType completionHandle:^(id model, NSError *error) {
            if (!error) {
                [weakSelf.myTableView reloadData];
                
            }else{
                NSLog(@"failed:%@",error);
            }
            [weakSelf.myTableView endHeaderRefresh];
        }];
    }];
    [_myTableView beginHeaderRefresh];
    [_myTableView addAutoFooterRefresh:^{
        [weakSelf.autoCarList getDataWithRequestType:RequestModelGetMore infoListType:infpListType completionHandle:^(id model, NSError *error) {
            if (!error) {
                [weakSelf.myTableView reloadData];
                
            }else{
                NSLog(@"failed:%@",error);
                
            }
            if (weakSelf.autoCarList.isloadMore == NO) {
                [weakSelf.myTableView endFooterRefreshWithNoMoreData];
            }else{
                [weakSelf.myTableView endFooterRefresh];
            }
        }];
    }];
}
#pragma mark - 懒加载 Lazyload
- (UITableView *)myTableView {
    if(_myTableView == nil) {
        _myTableView = [[UITableView alloc] init];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
        [_myTableView registerNib:[UINib nibWithNibName:@"AutoCarTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
        [self.view addSubview:_myTableView];
        [_myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(0);
            make.top.equalTo(20);
        }];
        [self getDataListWithType:self.listType];
    }
    return _myTableView;
}

- (InfoListViewModel *)autoCarList {
    if(_autoCarList == nil) {
        _autoCarList = [[InfoListViewModel alloc] initWithMe];
    }
    return _autoCarList;
}

@end
