//
//  waterParse.m
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "waterParse.h"

@implementation waterParse
+(waterParse *)Parse:(NSDictionary *)dic{
    waterParse *parse = [self new];
    NSMutableArray *arry = [NSMutableArray new];
    for (NSDictionary *dicr in dic[@"data"]) {
        [arry addObject:[waterDataParse Parse:dicr]];
    }
    NSMutableDictionary *muldic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [muldic setValue:arry forKey:@"data"];
    
    [parse setValuesForKeysWithDictionary:muldic];
    return parse;
}
-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end

@implementation waterDataParse

+(waterDataParse *)Parse:(NSDictionary *)dic{
    
    waterDataParse *parse = [self new];
    [parse setValuesForKeysWithDictionary:dic];
    return parse;
}
-(void)setNilValueForKey:(NSString *)key{
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"description"]) {
        key =@"descript";
        [self setValue:value forKey:key];
    }
}
@end