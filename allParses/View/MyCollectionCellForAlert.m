//
//  MyCollectionCellForAlert.m
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "MyCollectionCellForAlert.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
@implementation MyCollectionCellForAlert
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self button];
    }
    return self;
}
- (UIButton *)button {
    if(_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _button.backgroundColor = [UIColor orangeColor];
        _button.alpha = 0.5;
        [self.contentView addSubview:_button];
        [_button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(5);
        }];
    }
    return _button;
}
@end
