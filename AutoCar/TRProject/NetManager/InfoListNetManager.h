//
//  InfoListNetManager.h
//  TRProject
//
//  Created by junchuanshi on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+AFNetworking.h"
#import "InfoListModel.h"
typedef NS_ENUM(NSUInteger, InfoListType) {
    InfoListTypeLastNew,
    InfoListTypeNews,
    InfoListTypeTest,
    InfoListTypeShop,
    InfoListTypeMarket,
    InfoListTypeUseCar,
    InfoListTypeTecnic,
    InfoListTypeCalture,
    InfoListTypeModify,
    InfoListTypeTravel
};

@interface InfoListNetManager : NSObject
/**
 网络请求获取数据
请求参数：需要获取的数据类型，时间（分页），页数
 */
+(id)getDataWithType:(InfoListType)type updateTime:(NSString *)updateTime page:(NSInteger )page completionHandle:kCompetionHandleBlock;
@end
