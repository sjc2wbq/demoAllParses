//
//  NSObject+Parse.m
//  Day05_Douyu
//
//  Created by tarena on 16/1/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NSObject+Parse.h"

@implementation NSObject (Parse)
//解析字典
+ (id)parseDic:(NSDictionary *)responseObj{
    id model = [self new];
    [responseObj enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        //如果值是数组
        if ([obj isKindOfClass:[NSArray class]]) {
            //查看是否有针对的内容解析类
            NSDictionary *dic = [self objectClassInArray];
            if ([dic objectForKey:key]) {
                Class class = dic[key];
                //使用特殊的类来解析数组的内容
                obj = [class parse:obj];
            }
        }
        //把键过滤
        key = [self propertyNameForKey:key];
        
        [model setValue:obj forKey:key];
    }];
    return model;
}
//解析数组
+ (NSArray *)parseArr:(NSArray *)responseObj{
    NSMutableArray *arr = [NSMutableArray new];
    for (id obj in responseObj) {
        [arr addObject:[self parse:obj]];
    }
    return [arr copy];
}

+ (id)parse:(id)responseObj{
    if ([responseObj isKindOfClass:[NSDictionary class]]) {
        return [self parseDic:responseObj];
    }
    if ([responseObj isKindOfClass:[NSArray class]]) {
        return [self parseArr:responseObj];
    }
    return responseObj;
}

+ (NSDictionary *)objectClassInArray{
    return nil;
}

+ (NSString *)propertyNameForKey:(NSString *)key{
    return key;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{}

- (void)setNilValueForKey:(NSString *)key{}

@end


/*
 假设上方字典内容是 @{@"data": [GamesDataModel class]}
 */

//+ (id)parse:(NSDictionary *)dic{
//    id model = [self new];
//    //    [obj setValuesForKeysWithDictionary:dic];
//    //数组中的对象类型字典
//    NSDictionary *classDic = [self objectClassInArray];
//    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//        //判断值的类型,是否是数组,要做特殊处理
//        if ([obj isKindOfClass:[NSArray class]]) {
//            //判断当前数组是否存在特殊的解析类
//            if ([classDic objectForKey:key]) {
//                Class class = classDic[key];
//                NSMutableArray *arr = [NSMutableArray new];
//                for (id dic in obj) {
//                    [arr addObject:[class parse:dic]];
//                }
//                //重新赋值
//                obj = [arr copy];
//            }
//        }
//        [model setValue:obj forKey:key];
//    }];
//    return model;
//}




