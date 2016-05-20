//
//  InfoListNetManager.m
//  TRProject
//
//  Created by junchuanshi on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "InfoListNetManager.h"
#import "InfoListPath.h"
@implementation InfoListNetManager
+(id)getDataWithType:(InfoListType)type updateTime:(NSString *)updateTime page:(NSInteger)page completionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = nil;
    switch (type) {
        case InfoListTypeLastNew: {
            path = [NSString stringWithFormat:kLastNewPath,updateTime];
            break;
        }
        case InfoListTypeNews: {
            path = [NSString stringWithFormat:kNewsPath,page,updateTime];
            break;
        }
        case InfoListTypeTest: {
            path = [NSString stringWithFormat:kTestpath,page,updateTime];
            break;
        }
        case InfoListTypeShop: {
            path = [NSString stringWithFormat:kShopPath,page,updateTime];
            break;
        }
        case InfoListTypeMarket: {
            path = [NSString stringWithFormat:kMarkPath,page];
            break;
        }
        case InfoListTypeUseCar: {
            path = [NSString stringWithFormat:kUseCarPath,page,updateTime];
            break;
        }
        case InfoListTypeTecnic: {
            path = [NSString stringWithFormat:kTecnicPath,page,updateTime];
            break;
        }
        case InfoListTypeCalture: {
            path = [NSString stringWithFormat:kCalturePath,page,updateTime];
            break;
        }
        case InfoListTypeModify: {
            path = [NSString stringWithFormat:kModifilePath,page,updateTime];
            break;
        }
        case InfoListTypeTravel: {
            path = [NSString stringWithFormat:kTravelPath,page,updateTime];
            break;
        }
    }
    return [self GET:path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
        completionHandle([InfoListModel parse:responseObj],error);
    }];
}
@end
