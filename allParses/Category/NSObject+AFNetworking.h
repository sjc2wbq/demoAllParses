//
//  NSObject+AFNetworking.h
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NSObject (AFNetworking)
+(id)GET:(NSString *)path
    parameters:(id)parameters
    progress:(void(^)(NSProgress *))downloadProgress
    completionHandle:(void(^)(id responseObj,NSError *error))completionHandle;
+(id)POST:(NSString *)path
parameters:(id)parameters
progress:(void(^)(NSProgress *))downloadProgress
completionHandle:(void(^)(id responseObj,NSError *error))completionHandle;
@end
