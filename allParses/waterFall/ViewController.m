//
//  ViewController.m
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//
#import "NSObject+URLSession.h"
#import "ViewController.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
#import "WaterFallCollectionViewCell.h"
#import "waterParse.h"
#import "UIImageView+WebCache.h"
#import "MJRefresh.h"
#define kMiniCell 10
#define kMiniLine 10
#define kCellItem 5
#define kAddress @"http://box.dwstatic.com/apiAlbum.php?action=l&albumsTag=beautifulWoman&p=3&v=77&OSType=iOS8.2&versionName=2.1.7"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic) UICollectionView *collectionView;
@property(nonatomic) UICollectionViewFlowLayout *flowout;
@property(nonatomic) NSMutableArray *displayList;
@property(nonatomic) waterParse *picParse;

@end

@implementation ViewController
#pragma mark - UICollectionView Delegate
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //return 10;
    return self.displayList.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WaterFallCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    waterDataParse *picInfo = self.displayList[indexPath.row];
    NSString *imgUrl = picInfo.coverUrl;
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:imgUrl]];
    cell.titleLabel.text = picInfo.title;
    
    return cell;
}
-(void)loadViewWith:(NSString *)address{
    NSString *tmp = @"http://box.dwstatic.com/apiAlbum.php?action=l&albumsTag=beautifulWoman&p=";
    NSString *tmp2 = @"&v=77&OSType=iOS8.2&versionName=2.1.7";
    static NSInteger count = 1;
    address = [NSString stringWithFormat:@"%@%ld%@",tmp,count,tmp2];
    [ViewController GET:address completionHandle:^(id model, NSError *error) {
        if (error) {
            NSLog(@"%@",error);
        }else{
            self.picParse = [waterParse Parse:model];
            if (count < self.picParse.totalPage.integerValue) {
                count ++;
                [self.displayList addObjectsFromArray:self.picParse.data];
            }
            [[NSOperationQueue mainQueue]addOperationWithBlock:^{
    
                [self.collectionView reloadData];
            }];
        }
    }];
}
#pragma mark - 生命周期 LifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self collectionView];
    //初始化页数
 
    //刷新操作
    self.collectionView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        [self loadViewWith:kAddress];
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            [self.collectionView.mj_footer endRefreshing];
        }];
    }];
    
    [self.collectionView.mj_footer beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark - 懒加载 Lazyload
- (UICollectionView *)collectionView {
    if(_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.flowout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
        [_collectionView registerClass:[WaterFallCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
    }
    return _collectionView;
}


- (UICollectionViewFlowLayout *)flowout {
    if(_flowout == nil) {
        _flowout = [[UICollectionViewFlowLayout alloc] init];
        _flowout.minimumLineSpacing = 0;
        _flowout.minimumLineSpacing = kMiniCell;
        _flowout.sectionInset = UIEdgeInsetsMake(kCellItem , kCellItem, kCellItem, kCellItem);
        CGFloat width = ([UIScreen mainScreen].bounds.size.width - kCellItem*2-kMiniCell)/2;
        _flowout.itemSize = CGSizeMake(width, width/194*347);
    }
    return _flowout;
}

- (NSMutableArray *)displayList {
	if(_displayList == nil) {
		_displayList = [[NSMutableArray alloc] init];
	}
	return _displayList;
}

@end
