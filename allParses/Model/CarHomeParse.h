//
//  CarHomeParse.h
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Result;
@class Headlineinfo;
@class Topnewsinfo;
@class ClassArrynewsliet;
@interface CarHomeParse : NSObject
@property(nonatomic) NSString *message;
@property(nonatomic) Result *result;
@property(nonatomic) NSNumber *returncode;
+(id)parse:(NSDictionary *)dic;
@end

@interface Result : NSObject
@property(nonatomic) NSArray *focusimg;
@property(nonatomic) Headlineinfo *headlineinfo;
@property(nonatomic) NSNumber *isloadmore;
@property(nonatomic) NSArray *newslist;
@property(nonatomic) NSNumber *rowcount;
@property(nonatomic) Topnewsinfo *topnewsinfo;
+(id)parse:(NSDictionary *)dic;

@end
//"dbid": 0,
//"id": 884390,
//"indexdetail": "",
//"intacttime": "2016/1/30 10:53:00",
//"jumppage": 1,
//"lasttime": "20160130105300884390",
//"mediatype": 0,
//"newstype": 0,
//"pagecount": 1,
//"replycount": 273,
//"smallpic": "http://www2.autoimg.cn/newsdfs/g22/M02/2C/FB/400x300_0_autohomecar__wKgFW1aruwKAUGJiAAFeSynikwk920.jpg",
//"time": "2016-01-30",
//"title": "上半年投放市场 力帆全新SUV迈威申报图",
//"type": "新闻中心",
//"updatetime": "20160130105318"
@interface ClassArrynewsliet : NSObject
@property(nonatomic) NSNumber *dbid;
@property(nonatomic) NSNumber *ID;
@property(nonatomic) NSString *indexdetail;
@property(nonatomic) NSNumber *intacttime;
@property(nonatomic) NSNumber *jumppage;
@property(nonatomic) NSString *lasttime;
@property(nonatomic) NSNumber *mediatype;
@property(nonatomic) NSNumber *newstype;
@property(nonatomic) NSNumber *pagecount;
@property(nonatomic) NSNumber *replycount;
@property(nonatomic) NSString *smallpic;
@property(nonatomic) NSString *time;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *type;
@property(nonatomic) NSString *updatetime;
+(id)parse:(NSDictionary *)dic;

@end


@interface Headlineinfo : NSObject

@end

@interface Topnewsinfo : NSObject

@end

