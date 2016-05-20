//
//  waterParse.h
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class waterDataParse;

@interface waterParse : NSObject{
    int web;
}
@property(nonatomic) NSArray *data;
@property(nonatomic) NSNumber *pageNum;
@property(nonatomic) NSNumber *pageSize;
@property(nonatomic) NSNumber *totalPage;
@property(nonatomic) NSNumber *totalRecord;

+(waterParse *)Parse:(NSDictionary *)dic;
@end


//"clicks": "0",
//"commentCount": "51",
//"coverHeight": "259",
//"coverUrl": "http://s1.dwstatic.com/group1/M00/A1/D0/a1d0e955c9059b0ee3bd7924d5c888236386.jpg",
//"coverWidth": "195",
//"created": "1426239457",
//"description": "",
//"destUrl": "http://box.dwstatic.com/unsupport.php?lolboxAction=toAlbumDetail&albumId=101549&type=jiongTu",
//"galleryId": "101549",
//"picsum": "69",
//"title": "撸啊撸囧人囧事第145期 这年头，做个医生也不容易！",
//"updated": "1426242199"
@interface waterDataParse : NSObject
@property(nonatomic) NSString *clicks;
@property(nonatomic) NSString *commentCount;
@property(nonatomic) NSString *coverHeight;
@property(nonatomic) NSString *coverUrl;
@property(nonatomic) NSString *coverWidth;
@property(nonatomic) NSString *created;
@property(nonatomic) NSString *descript;
@property(nonatomic) NSString *destUrl;
@property(nonatomic) NSString *galleryId;
@property(nonatomic) NSString *picsum;
@property(nonatomic) NSString *title;
@property(nonatomic) NSString *updated;
+(waterDataParse *)Parse:(NSDictionary *)dic;
@end
