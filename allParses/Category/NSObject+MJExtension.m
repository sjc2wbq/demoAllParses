//
//  NSObject+MJExtension.m
//  waterFall
//
//  Created by junchuanshi on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "NSObject+MJExtension.h"

@implementation NSObject (MJExtension)
+(id)Parse:(id)responseObj{
    if ([responseObj isKindOfClass:[NSArray class]]) {
        return [self mj_objectArrayWithKeyValuesArray:responseObj];
    }
    if ([responseObj isKindOfClass:[NSDictionary class]]) {
        return [self mj_objectWithKeyValues:responseObj];
    }
    return responseObj;
}
@end
