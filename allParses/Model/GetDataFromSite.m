//
//  GetDataFromSite.m
//  waterFall
//
//  Created by Tarena on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "GetDataFromSite.h"
#import "Bizhi.h"
#import "waterParse.h"
#import "CarHomeParse.h"
#import "CarsPost.h"
@implementation GetDataFromSite

+(NSArray *)getDatafrom:(sites)site model:(id)model andBlock:(void (^)(getStr))getBlock{
    switch (site) {
        case sitesBZ: {
            Bizhi *bz = [Bizhi parse:model];
            NSArray *arry =bz.data;
            getBlock(^(NSInteger index){
                BizhiData *info = arry[index];
                NSString *title = info.title;
                NSString *imgUrl = info.coverUrl;
                NSLog(@"here in getdatafromsite");
                return @[title,imgUrl];
                
            });
            
            NSLog(@"getdada ahah");
            return  arry;
            break;
        }
        case sitesLT: {
            waterParse *wt = [waterParse Parse:model];
            NSArray *arry =wt.data;
            getBlock(^(NSInteger index){
                waterDataParse *info = arry[index];
                NSString *title = info.title;
                NSString *imgUrl = info.coverUrl;
                return @[title,imgUrl];
            });
            return  arry;
            break;
        }
        case sitesJT: {
            waterParse *wt = [waterParse Parse:model];
            NSArray *arry =wt.data;
            getBlock(^(NSInteger index){
                waterDataParse *info = arry[index];
                NSString *title = info.title;
                NSString *imgUrl = info.coverUrl;
                return @[title,imgUrl];
            });
            return  arry;
            
            break;
        }
        case sitesQCZJXWFY: {
            CarHomeParse *car = [CarHomeParse parse:model];
            NSArray *arry =car.result.newslist;
            getBlock(  ^(NSInteger index){
                ClassArrynewsliet *info = arry[index];
                NSString *title = info.title;
                NSString *imgPath = info.smallpic;
                return @[title,imgPath];
            });
            
            
            return  arry;
            break;
        }
        case sitesNVSHEN: {
            NvShen *ns = [NvShen parse:model];
            NSArray *arry =ns.data.liveList;
            getBlock(^(NSInteger index){
                NvShenLiveList *info = arry[index];
                NSString *title = info.liveName;
                NSString *imgUrl =info.thumb;
                NSLog(@"path:%@",info.thumb);
                return [@[title,imgUrl]copy];
            }
                     );
            return  arry;
            break;
        }
        case sitesZBXQ1: {
            NSLog(@"装备详情1");
            return nil;
            break;
        }
        case sitesZBXQ2: {
            NSLog(@"装备详情2");
            return nil;
            break;
        }
        case sitesHZFLSC: {
            NSLog(@"盒子福利商城");
            return nil;
            break;
        }
        case sitesHZFLSY: {
            NSLog(@"盒子福利首页");
            return nil;
            break;
        }
        case sitesYXZBLB: {
            NSLog(@"某游戏直播列表");
            
            return nil;
            break;
        }
        case sitesPXB: {
            NSLog(@"排行榜");
            return nil;
            break;
        }
        case sitesQCZJKB: {
            NSLog(@"汽车快报");
            CarsPost *car = [CarsPost Parse:model];
            NSArray *arry = car.result.list;
            getBlock(^(NSInteger index){
                List *userInfo = arry[index];
                return @[userInfo.title,userInfo.img];
            });
            
            return arry;
            
            break;
        }
        case sitesQCZJCP: {
            NSLog(@"汽车之家：测评");
            return nil;
            
            break;
        }
        case sitesQCZJSP: {
            NSLog(@"汽车之家：视频");
            return nil;
            break;
        }
        case sitesQCZJXW: {
            NSLog(@"汽车之家：新闻");
            return nil;
            break;
        }
        case sitesQCZJZX: {
            NSLog(@"汽车之家：最新");
            return nil;
            break;
        }
        case sitesSPFL: {
            NSLog(@"视频：分类");
            return nil;
            break;
        }
        case sitesSPPHB: {
            NSLog(@"视频：排行榜");
            return nil;
            break;
        }
        case sitesSPZX: {
            NSLog(@"视频：最新");
            return nil;
            break;
        }
        case sitesBAIKEFW: {
            NSLog(@"百科：符文");
            return nil;
            break;
        }
        case sitesBAIKETF: {
            NSLog(@"百科：天赋");
            return nil;
            break;
        }
        case sitesBAIKEJN: {
            NSLog(@"百科：技能");
            return nil;
            break;
        }
        case sitesBAIKEZB: {
            NSLog(@"百科：装备");
            return nil;
            break;
        }
        case sitesBAIKEZR: {
            NSLog(@"百科：阵容");
            return nil;
            break;
        }
        case sitesYUANBAOHZFL: {
            NSLog(@"元宝商城，盒子福利");
            return nil;
            break;
        }
        case sitesMEINVGX: {
            NSLog(@"美女搞笑");
            return nil;
            break;
        }
        case sitesMEINVHSY: {
            NSLog(@"美女好声音");
            return nil;
            break;
        }
            
        case sitesMEINVTUIJIAN: {
            NSLog(@"美女推荐");
            return nil;
            break;
        }
        case sitesZBFEILEI: {
            NSLog(@"装备分类");
            return nil;
            break;
            
        }
    }
    
}
-(void)dataDeal:(id)model{
    
}

@end
