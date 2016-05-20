//
//  AutoCarTableViewCell.m
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AutoCarTableViewCell.h"

@implementation AutoCarTableViewCell
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.separatorInset = UIEdgeInsetsZero;
        self.layoutMargins = UIEdgeInsetsZero;
        self.preservesSuperviewLayoutMargins = NO;
    }
    return self;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
