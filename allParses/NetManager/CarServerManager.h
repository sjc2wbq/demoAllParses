//
//  CarServerManager.h
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+AFNetworking.h"
#import "CarsPost.h"
@interface CarServerManager : NSObject
+(id)getDataWithPath:(NSString *)path completionHandle:(void(^)(id model,NSError *error))completionHandle;
@end
