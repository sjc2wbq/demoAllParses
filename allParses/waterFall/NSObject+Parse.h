//
//  NSObject+Parse.h
//  Day05_Douyu
//
//  Created by tarena on 16/1/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Parse)

+ (id)parse:(id)responseObj;

/*
 通过重写下方方法,返回某个数组对应的内容解析类
 字典的内容:
 @{@"data": [GamesDataModel class],...}
 */
+ (NSDictionary *)objectClassInArray;

/*
 做key 和 @property 的对应
 传入key 传出 对应的属性名
 传入id 传出ID
 */

+ (NSString *)propertyNameForKey:(NSString *)key;
@end









