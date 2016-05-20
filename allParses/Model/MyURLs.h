//
//  MyURLs.h
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyURLs : NSObject
@property(nonatomic) NSString *myurl;
@property(nonatomic) NSString *urlName;
+(MyURLs *)myurlsShared:(NSString *)url andName:(NSString *)name;
+(NSArray<MyURLs *>*)getUrlArr;
@end
