//
//  CarServerManager.m
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "CarServerManager.h"

@implementation CarServerManager
+(id)getDataWithPath:(NSString *)path completionHandle:(void (^)(id, NSError *))completionHandle{
    NSMutableDictionary *parameters = [NSMutableDictionary new];
    return [self GET:path parameters:parameters progress:nil completionHandle:^(id responseObj, NSError *error) {
        completionHandle([CarsPost Parse:responseObj],error);
    }];
}
@end
