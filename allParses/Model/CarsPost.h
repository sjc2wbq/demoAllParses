//
//  CarsPost.h
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+MJExtension.h"
@class CarsResult,List;
@interface CarsPost : NSObject

@property (nonatomic, strong) CarsResult *result;

@property (nonatomic, assign) NSInteger returncode;

@property (nonatomic, copy) NSString *message;

@end
@interface CarsResult : NSObject

@property (nonatomic, assign) BOOL isloadmore;

@property (nonatomic, assign) NSInteger rowcount;

@property (nonatomic, strong) NSArray<List *> *list;

@end

@interface List : NSObject

@property (nonatomic, assign) NSInteger id;

@property (nonatomic, assign) NSInteger state;

@property (nonatomic, copy) NSString *typename;

@property (nonatomic, copy) NSString *createtime;

@property (nonatomic, copy) NSString *lastid;

@property (nonatomic, copy) NSString *advancetime;

@property (nonatomic, copy) NSString *bgimage;

@property (nonatomic, assign) NSInteger reviewcount;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *img;

@property (nonatomic, copy) NSString *publishtiptime;

@property (nonatomic, assign) NSInteger typeid;

@end

