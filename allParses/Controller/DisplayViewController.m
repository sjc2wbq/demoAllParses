//
//  DisplayViewController.m
//  waterFall
//
//  Created by junchuanshi on 16/1/31.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "DisplayViewController.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
#import "WebDataCollectionCell.h"
#import "NSObject+URLSession.h"
#import "CarHomeParse.h"
#import "UIImageView+WebCache.h"
#import "Bizhi.h"
#import "waterParse.h"

#import "GetDataFromSite.h"
#import "CarsPost.h"
#import "CarServerManager.h"
//typedef NSArray<NSString *> *(^getStr)(NSInteger index);
@interface DisplayViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic) UICollectionView *collectionView;
@property(nonatomic) UICollectionViewFlowLayout *flowout;
@property(nonatomic) NSArray *dataList;
@property(nonatomic,strong) getStr getInfo;
@end

@implementation DisplayViewController
#pragma mark - UICollectionView Delegate

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WebDataCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"dispalycell" forIndexPath:indexPath];
    //    List *uerInfo = self.dataList[indexPath.row];
    //    cell.site.text = uerInfo.title;
    //    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:uerInfo.img]];
    NSArray *Infoary = self.getInfo(indexPath.row);
    cell.site.text = Infoary[0];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:Infoary[1]]];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataList.count;
}
#pragma mark - 生命周期 LifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self collectionView];
    //    NSLog(@"%@",self.path);
    //    [CarServerManager getDataWithPath:@"http://app.api.autohome.com.cn/autov4.6/news/fastnewslist-a2-pm1-v4.6.6-b0-l0-s20-lastid0.html" completionHandle:^(id model, NSError *error) {
    //        CarsPost *car =model;
    //        self.dataList = car.result.list;
    //        [self.collectionView reloadData];
    //        NSLog(@"");
    //    }];
    
    //network方法
    [NSObject GET:self.path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
        self.dataList = [GetDataFromSite getDatafrom:self.mySites model:responseObj andBlock:^(getStr block) {
            self.getInfo = block;
            [self.collectionView reloadData];
        }];
    }];
    // NSSession 方法
    //    [NSObject GET:self.path completionHandle:^(id model, NSError *error) {
    //        self.dataList = [GetDataFromSite getDatafrom:self.mySites model:model andBlock:^(getStr block) {
    //            self.getInfo = block;
    //        }];
    //        NSLog(@"getinfo,%@",self.getInfo);
    //        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
    //            [self.collectionView reloadData];
    //        }];
    //    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 懒加载 Lazyload
- (UICollectionViewFlowLayout *)flowout {
    if(_flowout == nil) {
        _flowout = [[UICollectionViewFlowLayout alloc] init];
        _flowout.minimumLineSpacing = 10;
        _flowout.minimumInteritemSpacing =10;
        _flowout.sectionInset = UIEdgeInsetsMake(2, 2, 2, 2);
        CGFloat width =([UIScreen mainScreen].bounds.size.width-10-2*2)/2;
        _flowout.itemSize = CGSizeMake(width,380);
    }
    return _flowout;
}

- (UICollectionView *)collectionView {
    if(_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.flowout];
        [_collectionView registerClass:[WebDataCollectionCell class] forCellWithReuseIdentifier:@"dispalycell"];
        _collectionView.backgroundColor = [UIColor lightGrayColor];
        _collectionView.delegate = self;
        _collectionView.dataSource =self;
        
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
    }
    return _collectionView;
}
#pragma mark - 方法 Method
@end
