//
//  PageViewController.m
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "PageViewController.h"
#import "ViewController.h"
@interface PageViewController ()

@end

@implementation PageViewController
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.showOnNavigationBar = YES;
        self.menuHeight = 40;
        self.menuItemWidth = 60;
        self.menuBGColor = [UIColor clearColor];
        self.menuViewStyle = WMMenuViewStyleLine;
    }
    return self;
}
//重写父类的titles属性的getter方法，设置题目
- (NSArray<NSString *> *)titles{
    return @[@"最新",@"新闻",@"测评",@"导购",@"行情",@"用车",@"科技",@"文化",@"改装",@"游记"];
}

#pragma mark - PageViewController Delegate
//1.内部控制器的个数
-(NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.titles.count;
}
//2.每个子控制的样子
-(UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    ViewController *vc = [ViewController new];
    vc.listType = index;
    return vc;
}
//3.每个控制器的题目
-(NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index{
    return self.titles[index];
}
#pragma mark - 生命周期 LifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
