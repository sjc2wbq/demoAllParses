//
//  CarHomeParse.m
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "CarHomeParse.h"

@implementation CarHomeParse
+(id)parse:(NSDictionary *)dic{
    NSDictionary *dicTemp = dic[@"result"];
    Result *result = [Result parse:dicTemp];
    
    NSMutableDictionary *muldic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [muldic setObject:result forKey:@"result"];
    
    CarHomeParse *parse = [self new];
    [parse setValuesForKeysWithDictionary:muldic];
    return parse;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
-(void)setNilValueForKey:(NSString *)key{
    
}
@end
@implementation Result

+(id)parse:(NSDictionary *)dic{
    
    NSMutableArray *mulary = [NSMutableArray new];
    NSArray *ary = dic[@"newslist"];
    for (NSDictionary *oneDic in ary) {
        [mulary addObject:[ClassArrynewsliet parse:oneDic]];
    }
    NSMutableDictionary *muldic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [muldic setObject:mulary forKey:@"newslist"];
    
    Result *parse = [self new];
    [parse setValuesForKeysWithDictionary:muldic];
    return parse;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
-(void)setNilValueForKey:(NSString *)key{
    
}

@end

@implementation ClassArrynewsliet

+(id)parse:(NSDictionary *)dic{
    ClassArrynewsliet *parse = [self new];
    [parse setValuesForKeysWithDictionary:dic];
    
    return parse;
}
-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

@end