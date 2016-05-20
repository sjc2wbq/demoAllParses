//
//  WebDataCollectionCell.m
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "WebDataCollectionCell.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"

@implementation WebDataCollectionCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self site];
        [self siteInfo];
        [self imageView];
    }
    return self;
}
-(UILabel *)site{
    if (_site == nil) {
        _site = [UILabel new];
        _site.textColor = [UIColor whiteColor];
        //_site.alpha = 0.6;
        _site.textAlignment = NSTextAlignmentCenter;
        _site.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:_site];
        [_site mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.equalTo(0);
            make.height.equalTo(30);
        }];
    }
    return _site;
}
- (UITextView *)siteInfo {
    if(_siteInfo == nil) {
        _siteInfo = [[UITextView alloc] init];
        //_siteInfo.userInteractionEnabled = NO;
        _siteInfo.editable = NO;
       // [_siteInfo sizeToFit];
        [self.contentView addSubview:_siteInfo];
        [_siteInfo mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0);
            make.height.equalTo(50);
            make.bottom.equalTo(self.imageView.mas_top);
            make.top.equalTo(self.site.mas_bottom);
        }];
    }
    return _siteInfo;
}
- (UIImageView *)imageView {
    if(_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
//        _imageView.backgroundColor = [UIColor grayColor];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:_imageView];
        [_imageView sizeToFit];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(0);
        
            make.top.equalTo(self.siteInfo.mas_bottom);
        }];
    }
    return _imageView;
}
@end
