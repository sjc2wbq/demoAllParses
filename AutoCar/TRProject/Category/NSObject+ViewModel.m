//
//  NSObject+ViewModel.m
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "NSObject+ViewModel.h"
//通过运行时，解决Category不能定义属性的弱点
#import <objc/runtime.h>
//dataTaskKey变量存的是本身的地址，因为是静态的，所以地址唯一，不会重复
static const void *dataTaskKey = &dataTaskKey;
@implementation NSObject (ViewModel)
//通过运行时，动态绑定实现属性的setter方法
- (void)setDataTask:(NSURLSessionDataTask *)dataTask{
    objc_setAssociatedObject(self, dataTaskKey, dataTask, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSURLSessionDataTask *)dataTask{
    return objc_getAssociatedObject(self, dataTaskKey);
}
-(void)getDataWithRequestType:(RequestModel)requestType infoListType:(InfoListType)type  completionHandle:kCompetionHandleBlock{
    
}
-(void)resumeTask{
    [self.dataTask resume];
}
-(void)cancelTask{
    [self.dataTask cancel];
}
-(void)suspendTask{
    [self.dataTask suspend];
}
@end
