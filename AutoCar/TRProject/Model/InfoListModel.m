//
//  InfoListModel.m
//  TRProject
//
//  Created by junchuanshi on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "InfoListModel.h"

@implementation InfoListModel

@end
@implementation infoListResultModel

+ (NSDictionary *)objClassInArray{
    return @{@"ewslist" : [infoLisNewslistModel class], @"focusimg" : [infoLisFocusimgModel class]};
}
+(NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ewslist":@"newslist"};
}

@end


@implementation infoLisHeadlineinfoModel
+(NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ID":@"id"};
}
@end


@implementation infoLisTopnewsinfoModel

@end


@implementation infoLisNewslistModel
+(NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ID":@"id",@"ewstype":@"newstype"};
}
@end


@implementation infoLisFocusimgModel
+(NSDictionary *)replaceKeyFromPropertyName{
    return @{@"ID":@"id"};
}
@end


