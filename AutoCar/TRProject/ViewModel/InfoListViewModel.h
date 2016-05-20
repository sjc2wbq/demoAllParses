//
//  InfoListViewModel.h
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InfoListModel.h"
#import "InfoListNetManager.h"
#import "NSObject+ViewModel.h"
/**获取数据操作的类型（上拉重置，下拉刷新）*/
@interface InfoListViewModel : NSObject
/**获取的数据的个数*/
@property(nonatomic) NSInteger rowCount;
/**根据行数获取获标题*/
-(NSString *)titleAtRow:(NSInteger)row;
/**根据行数获取时间字符串*/
-(NSString *)timeAtRow:(NSInteger)row;
/**根据行数获取评论字符串*/
-(NSString *)replyCountAtRow:(NSInteger)row;
/**根据行数获取图片地址*/
-(NSURL *)picUrlAtRow:(NSInteger)row;

/**请求参数：页*/
@property(nonatomic) NSInteger page;
/**请求参数：lastTime*/
@property(nonatomic) NSString *lastTime;
/**请求参数：是否还有更多数据（是否为最后一页数据）*/
@property(nonatomic) BOOL isloadMore;
@property (nonatomic) InfoListType infoListType;
@property(nonatomic) NSMutableArray *infoListArr;
/**根据需要请求数据的类型的infoListViewModel的初始化方法 */
-(instancetype)initWithInfoLiatType:(InfoListType)infoListType;
/**自定义初始化方法*/
-(instancetype)initWithMe;
@end
