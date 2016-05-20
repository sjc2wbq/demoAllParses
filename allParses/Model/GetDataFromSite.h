//
//  GetDataFromSite.h
//  waterFall
//
//  Created by Tarena on 16/2/1.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+MJExtension.h"
typedef NSArray<NSString *> *(^getStr)(NSInteger index);
typedef NS_ENUM(NSUInteger, sites) {
    sitesBZ =0,
    sitesLT =1,
    sitesQCZJXWFY =2,
    sitesJT =3,
    
    sitesNVSHEN =4,
    sitesZBXQ1 =5,
    sitesZBXQ2 =6,
    sitesHZFLSC =7,
    sitesHZFLSY =8,
    sitesYXZBLB =9,
    sitesPXB =10 ,
    sitesQCZJKB =11,
    sitesQCZJCP =12,
    sitesQCZJSP =13,
    sitesQCZJXW =14,
    sitesQCZJZX =15,
    
    sitesSPFL =16,
    sitesSPPHB =17,
    sitesSPZX =18,
    sitesBAIKEFW =19,
    sitesBAIKETF =20,
    sitesBAIKEJN =21,
    
    sitesBAIKEZB =22,
    sitesBAIKEZR =23,
    sitesYUANBAOHZFL =24,
    sitesMEINVGX =25,
    sitesMEINVHSY =26,
    sitesMEINVTUIJIAN =27,
    sitesZBFEILEI =28,
};

@interface GetDataFromSite : NSObject

+(NSArray *)getDatafrom:(sites )site model:(id)model andBlock:(void(^)(getStr block))getBlock;

@property(nonatomic) NSString *descript;

@end
