//
//  NSObject+ViewModel.h
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InfoListNetManager.h"
@interface NSObject (ViewModel)

typedef NS_ENUM(NSUInteger, RequestModel) {
    RequestModelRefresh,
    RequestModelGetMore,
};

-(void)getDataWithRequestType:(RequestModel)requestType infoListType:(InfoListType)type  completionHandle:kCompetionHandleBlock;
@property(nonatomic) NSURLSessionDataTask *dataTask;
/**取消任务*/
- (void)cancelTask;
/**暂停任务*/
- (void)suspendTask;
/**继续任务任务*/
- (void)resumeTask;
@end
