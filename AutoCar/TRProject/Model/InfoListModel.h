//
//  InfoListModel.h
//  TRProject
//
//  Created by junchuanshi on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
@class infoListResultModel,infoLisHeadlineinfoModel,infoLisTopnewsinfoModel,infoLisNewslistModel,infoLisFocusimgModel;
@interface InfoListModel : NSObject

@property (nonatomic, strong) infoListResultModel *result;

@property (nonatomic, assign) NSInteger returncode;

@property (nonatomic, copy) NSString *message;

@end
@interface infoListResultModel : NSObject

@property (nonatomic, assign) BOOL isloadmore;

@property (nonatomic, assign) NSInteger rowcount;

@property (nonatomic, strong) infoLisHeadlineinfoModel *headlineinfo;

@property (nonatomic, strong) NSArray<infoLisFocusimgModel *> *focusimg;
#warning new是系统关键词，不能作为变量名开头
@property (nonatomic, strong) NSArray<infoLisNewslistModel *> *ewslist;

@property (nonatomic, strong) infoLisTopnewsinfoModel *topnewsinfo;

@end

@interface infoLisHeadlineinfoModel : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *smallpic;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *lasttime;

@property (nonatomic, copy) NSString *time;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *updatetime;

@property (nonatomic, assign) NSInteger jumppage;

@property (nonatomic, copy) NSString *indexdetail;

@property (nonatomic, assign) NSInteger pagecount;

@property (nonatomic, strong) NSArray *coverimages;

@end

@interface infoLisTopnewsinfoModel : NSObject

@end

@interface infoLisNewslistModel : infoLisHeadlineinfoModel

//@property (nonatomic, assign) NSInteger ID;
//
//@property (nonatomic, strong) NSArray *coverimages;
//
//@property (nonatomic, copy) NSString *smallpic;
//
//@property (nonatomic, assign) NSInteger replycount;
//
//@property (nonatomic, copy) NSString *lasttime;
//
//@property (nonatomic, copy) NSString *time;
//
//@property (nonatomic, assign) NSInteger mediatype;
//
//@property (nonatomic, copy) NSString *title;
//
//@property (nonatomic, copy) NSString *type;
//
//@property (nonatomic, copy) NSString *updatetime;
//
//@property (nonatomic, assign) NSInteger jumppage;
//
//@property (nonatomic, copy) NSString *indexdetail;
//
//@property (nonatomic, assign) NSInteger pagecount;

@property (nonatomic, assign) NSInteger ewstype;

@end

@interface infoLisFocusimgModel : NSObject

@property (nonatomic, copy) NSString *imgurl;

@property (nonatomic, copy) NSString *jumpurl;

@property (nonatomic, copy) NSString *updatetime;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger pageindex;

@property (nonatomic, assign) NSInteger JumpType;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, assign) NSInteger fromtype;

@end

