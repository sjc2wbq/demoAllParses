//
//  NSObject+URLSession.m
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "NSObject+URLSession.h"

@implementation NSObject (URLSession)
+(id)GET:(NSString *)path completionHandle:(void (^)(id, NSError *))completionHandle{
    NSURLSession *sesion = [NSURLSession sharedSession];
    
   
    NSURLSessionTask *task = [sesion dataTaskWithURL:[NSURL URLWithString:path] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            completionHandle(nil,error);
            return ;
        }
        id responseObjc = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        if (error) {
            completionHandle(nil,error);
            return;
        }
        completionHandle(responseObjc,error);
    }];
    [task resume];
    return task;
}
@end
