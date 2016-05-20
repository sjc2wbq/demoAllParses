//
//  Bizhi.m
//  waterFall
//
//  Created by junchuanshi on 16/1/31.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "Bizhi.h"

@implementation Bizhi
+(id)parse:(NSDictionary *)dic{
    NSMutableArray *mulAry = [NSMutableArray new];
    for (NSDictionary *oneDic in dic[@"data"]) {
        [mulAry addObject:[BizhiData parse:oneDic]];
    }
    
    NSMutableDictionary *mulDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mulDic setObject:mulAry forKey:@"data"];
    Bizhi *model = [self new];
    [model setValuesForKeysWithDictionary:mulDic];
    return model;
}
-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end

@implementation BizhiData

+(id)parse:(NSDictionary *)dic{
    BizhiData *model = [self new];
    [model setValuesForKeysWithDictionary:dic];
    return model;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"description"]) {
        key = @"description11";
        [self setValue:value forKey:key];
    }
}
-(void)setNilValueForKey:(NSString *)key{
    
}
@end
/******************************************************************************/
@implementation NvShen
+(id)parse:(NSDictionary *)dic{
    
    NSDictionary *dataDic = dic[@"data"];
    NvShenData *data = [NvShenData parse:dataDic];
    
    NSMutableDictionary *muldic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [muldic setObject:data forKey:@"data"];
    
    NvShen *model = [self new];
    [model setValuesForKeysWithDictionary:muldic];
    return model;
}

-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end
@implementation NvShenData
+(id)parse:(NSDictionary *)dic{
    NSMutableArray *mularr = [NSMutableArray new];
    for (NSDictionary *oneDic in dic[@"liveList"]) {
        [mularr addObject:[NvShenLiveList parse:oneDic]];
    }
    NSMutableDictionary *mulDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mulDic setObject:mularr forKey:@"liveList"];
    NvShenData *model = [self new];
    [model setValuesForKeysWithDictionary:mulDic];
    return model;
}

-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end

@implementation NvShenLiveList
+(id)parse:(NSDictionary *)dic{
    NvShenLiveList *model = [self new];
    [model setValuesForKeysWithDictionary:dic];
    return model;
}
-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

@end
