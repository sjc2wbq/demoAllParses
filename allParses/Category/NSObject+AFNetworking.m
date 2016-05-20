//
//  NSObject+AFNetworking.m
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "NSObject+AFNetworking.h"

@implementation NSObject (AFNetworking)
+(id)GET:(NSString *)path parameters:(id)parameters progress:(void (^)(NSProgress *))downloadProgress completionHandle:(void (^)(id, NSError *))completionHandle{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    application/json
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"text/html",@"text/json",@"text/javascript",@"application/json"]];
    return [manager GET:path parameters:parameters progress:downloadProgress success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil,error);
        NSLog(@"%@",error);
    }];
    
}
+(id)POST:(NSString *)path parameters:(id)parameters progress:(void (^)(NSProgress *))downloadProgress completionHandle:(void (^)(id, NSError *))completionHandle{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    return [manager POST:path parameters:parameters progress:downloadProgress success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil,error);
    }];
    
}
@end
