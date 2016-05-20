//
//  SiteDataViewController.m
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "SiteDataViewController.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
#import "DisplayViewController.h"
#import "MyURLs.h"
#define kMiniCell 10
#define kInsertIntem 2
#define kMiniLine 10
#import "WebDataCollectionCell.h"

@interface SiteDataViewController()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic) UICollectionView *collectionView;
@property(nonatomic) NSArray *dataList;
@property(nonatomic) UICollectionViewFlowLayout *flowout;
@end

@implementation SiteDataViewController
#pragma mark - UICollectionView Delegate


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    DisplayViewController *dis = [DisplayViewController new];
    MyURLs *model = self.dataList[indexPath.row];
    dis.path = model.myurl ;
    dis.mySites = indexPath.row;
    dis.title = model.urlName;
    [self.navigationController pushViewController:dis animated:YES];
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSLog(@"count:%lu",(unsigned long)self.dataList.count);

    //return 10;
   return  self.dataList.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WebDataCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    MyURLs *model = self.dataList[indexPath.row];
    cell.site.text = model.urlName;
    cell.siteInfo.text = model.myurl;
    return cell;
}
#pragma mark - 生命周期 LifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self collectionView];
    self.title = @"解析大全";
    self.view.backgroundColor = [UIColor lightGrayColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 懒加载 Lazyload
- (UICollectionView *)collectionView {
	if(_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.flowout];
        [_collectionView registerClass:[WebDataCollectionCell class] forCellWithReuseIdentifier:@"cell"];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
        
	}
	return _collectionView;
}

- (NSArray *)dataList {
	if(_dataList == nil) {
		_dataList = [MyURLs getUrlArr];
	}
	return _dataList;
}

- (UICollectionViewFlowLayout *)flowout {
	if(_flowout == nil) {
		_flowout = [[UICollectionViewFlowLayout alloc] init];
        _flowout.minimumLineSpacing = kMiniLine;
        _flowout.minimumInteritemSpacing = kMiniCell;
        _flowout.sectionInset = UIEdgeInsetsMake(kInsertIntem, kInsertIntem, kInsertIntem, kInsertIntem);
        CGFloat width = ([UIScreen mainScreen].bounds.size.width - kMiniCell - kInsertIntem*2)/2;
        _flowout.itemSize = CGSizeMake(width, 80);
	}
	return _flowout;
}

@end
