//
//  Bizhi.h
//  waterFall
//
//  Created by junchuanshi on 16/1/31.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BizhiData;
@class NvShen;
@class NvShenData;
@interface Bizhi : NSObject
@property(nonatomic) NSArray *data;
@property(nonatomic) NSNumber *pageNum;
@property(nonatomic) NSNumber *pageSize;
@property(nonatomic) NSNumber *totalPage;
@property(nonatomic) NSNumber *totalRecord;
+(id)parse:(NSDictionary *)dic;
@end

//"clicks": "0",
//"commentCount": "0",
//"coverHeight": "346",
//"coverUrl": "http://s1.dwstatic.com/group1/M00/46/05/ec4e11924eb9ddf17b12b17e7631b07e.jpg",
//"coverWidth": "195",
//"created": "1424055950",
//"description": "",
//"destUrl": "http://box.dwstatic.com/unsupport.php?lolboxAction=toAlbumDetail&albumId=100821&type=wallpaper",
//"galleryId": "100821",
//"picsum": "7",
//"title": "卡西米尔的联盟手绘日记：手机壁纸",
//"updated": "1424055950"

@interface BizhiData : NSObject
@property(nonatomic) NSString *clicks;
@property(nonatomic) NSString *commentCount;
@property(nonatomic) NSString *coverHeight;
@property(nonatomic) NSString *coverUrl;
@property(nonatomic) NSString *coverWidth;
@property(nonatomic) NSString *created;
@property(nonatomic) NSString *description11;
@property(nonatomic) NSString *destUrl;
@property(nonatomic) NSString *galleryId;
@property(nonatomic) NSString *picsum;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *updated;
+(id)parse:(NSDictionary *)dic;
@end




//"liveId": 928522448,
//"liveName": "「 Ｃ＋ 」婲開º duang一下下！",
//"liveTime": 23757860,
//"liveType": 1,
//"nameStyle": 0,
//"sid": 44437171,
//"specificRecommend": 0,
//"ssid": 44437171,
//"start": 1426886135,
//"thumb": "http://image.yy.com/yysnapshot/3fbe17160c208d6fdb9d6da7d42e196c55538eb3?imageview/0/w/320/blur/1",
//"users": 5317

@interface NvShen  : NSObject
@property(nonatomic) NSNumber *code;
@property(nonatomic) NvShenData *data;
@property(nonatomic) NSString *message;
+(id)parse:(NSDictionary *)dic;
@end


@interface NvShenData : NSObject
@property(nonatomic) NSNumber *isLastPage;
@property(nonatomic) NSArray *liveList;
+(id)parse:(NSDictionary *)dic;
@end

@interface NvShenLiveList :NSObject
@property(nonatomic) NSNumber *liveId;
@property(nonatomic) NSNumber *liveTime;
@property(nonatomic) NSNumber *liveType;
@property(nonatomic) NSNumber *nameStyle;
@property(nonatomic) NSNumber *sid;
@property(nonatomic) NSNumber *specificRecommend;
@property(nonatomic) NSNumber *ssid;
@property(nonatomic) NSNumber *start;
@property(nonatomic) NSNumber *users;
@property(nonatomic) NSString *thumb;
@property(nonatomic) NSString *liveName;
+(id)parse:(NSDictionary *)dic;

@end