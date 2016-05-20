//
//  WaterFallCollectionViewCell.m
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "WaterFallCollectionViewCell.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
@implementation WaterFallCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self titleLabel];

        [self imageView];
    }
    return self;
}
- (UIImageView *)imageView {
    if(_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
        _imageView.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:_imageView];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.equalTo(0);
            make.bottom.equalTo(self.titleLabel.mas_top);
        }];
    }
    return _imageView;
}

- (UILabel *)titleLabel {
    if(_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:_titleLabel];
    
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(0);
            make.height.equalTo(35);
        }];
    }
    return _titleLabel;
}

@end
