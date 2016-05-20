//
//  InfoListViewModel.m
//  TRProject
//
//  Created by junchuanshi on 16/2/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "InfoListViewModel.h"

@implementation InfoListViewModel
-(NSInteger)rowCount{
    return self.infoListArr.count;
}
-(NSString *)titleAtRow:(NSInteger)row{
    return [self getListDataFormRow:row].title;
}
-(NSString *)timeAtRow:(NSInteger)row{
    return [self getListDataFormRow:row].time;
}
-(NSString *)replyCountAtRow:(NSInteger)row{
    NSString *replayCout = [NSString stringWithFormat:@"%ld%@",[self getListDataFormRow:row].replycount,@"评论"];
    return replayCout;
}
-(NSURL *)picUrlAtRow:(NSInteger)row{
    NSString *path = [self getListDataFormRow:row].smallpic;
    return [NSURL URLWithString:path];
}
-(infoLisNewslistModel *)getListDataFormRow:(NSInteger)row{
    if (row < self.infoListArr.count) {
        return self.infoListArr[row];
    }else{
        NSLog(@"数据溢出");
        return nil;
    }
}


-(void)getDataWithRequestType:(RequestModel)requestType infoListType:(InfoListType)infoListType completionHandle:(void (^)(id, NSError *))completionHandle{
    switch (requestType) {
        case RequestModelRefresh: {
            self.page = 1;
            self.lastTime = @"0";
            break;
        }
        case RequestModelGetMore: {
            infoLisNewslistModel *listModel = self.infoListArr.lastObject;
            self.lastTime = listModel.lasttime;
            self.page ++;
            break;
        }
    }
    self.dataTask = [InfoListNetManager getDataWithType:infoListType updateTime:self.lastTime page:self.page completionHandle:^(InfoListModel *model, NSError *error) {
        if (!error) {
            if (requestType == RequestModelRefresh) {
                [self.infoListArr removeAllObjects];
            }
            [self.infoListArr addObjectsFromArray:model.result.ewslist];
            self.isloadMore = model.result.isloadmore;
            completionHandle(model,error);
        }
    }];
    
}
-(instancetype)initWithInfoLiatType:(InfoListType)infoListType{
    if (self = [super init]) {
        self.page = 1;
        self.lastTime = @"0";

    }
    return self;
}
-(instancetype)init{
    NSAssert(NO, @"must use initWithInfoLiatTyp");
    return nil;
}
-(instancetype)initWithMe{
    if (self = [super init]) {
        self.page = 1;
        self.lastTime = @"0";
    }
    return self;
    
}


- (NSMutableArray *)infoListArr {
    if(_infoListArr == nil) {
        _infoListArr = [[NSMutableArray alloc] init];
    }
    return _infoListArr;
}



@end
