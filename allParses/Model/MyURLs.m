//
//  MyURLs.m
//  waterFall
//
//  Created by Tarena on 16/1/30.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import "MyURLs.h"

@implementation MyURLs
+(MyURLs *)myurlsShared:(NSString *)url andName:(NSString *)name{
    MyURLs *urlModel = [MyURLs new];
    urlModel.myurl = url;
    urlModel.urlName = name;
    return urlModel;
}
+(NSArray<MyURLs *> *)getUrlArr{
    MyURLs *model1 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiAlbum.php?action=l&albumsTag=wallpaper&p=1&v=77&OSType=iOS8.2&versionName=2.1.7" andName:@"壁纸"];
    MyURLs *model2 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiAlbum.php?action=l&albumsTag=beautifulWoman&p=1&v=77&OSType=iOS8.2&versionName=2.1.7"andName:@"靓图"];
    MyURLs *model3 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiItemDetail.php?id=2003&v=77&OSType=iOS8.2" andName:@"装备详情1"];
    MyURLs *model4 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiItemDetail.php?id=3069&v=77&OSType=iOS8.2" andName:@"装备详情2"];
    MyURLs *model5 = [MyURLs myurlsShared:@"http://m.pai.duowan.com/mobileapi/tasklist?platform=ios&g_cid=&app_ver=12&d_uuid=973D563D-097D-4980-97AD-3E2721705ED0&platform=ios" andName:@"盒子福利商城"];
    MyURLs *model6 = [MyURLs myurlsShared:@"http://m.pai.duowan.com/mobileapi/goodssummery?&g_cid=&app_ver=12&d_uuid=973D563D-097D-4980-97AD-3E2721705ED0&platform=ios" andName:@"盒子福利首页"];
    
    MyURLs *model7 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiAlbum.php?action=l&albumsTag=jiongTu&p=1&v=77&OSType=iOS8.2&versionName=2.1.7" andName:@"囧图"];
    MyURLs *model8 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiHeroes.php?v=77&type=free&OSType=iOS8.2" andName:@"游戏直播列表"];
    MyURLs *model9 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiHeroes.php?sort=hero&type=all&OSType=iOS8.2&v=77" andName:@"排行榜"];
    MyURLs *model10 = [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/newslist-a2-pm1-v4.6.6-c0-nt1-p2-s30-l0.html" andName:@"汽车之家新闻分页"];
    MyURLs *model11 = [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/fastnewslist-a2-pm1-v4.6.6-b0-l0-s20-lastid0.html" andName:@"汽车之家快报"];
//    http://app.api.autohome.com.cn/autov4.6/news/fastnewslist-a2-pm1-v4.6.6-b0-l0-s20-lastid0.html
    MyURLs *model12 = [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/newslist-a2-pm1-v4.6.6-c0-nt3-p1-s30-l0.html" andName:@"汽车之家评测"];
    MyURLs *model13= [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/videolist-a2-pm1-v4.6.6-vt0-s30-lastid0.html" andName:@"汽车之家视屏"];
    MyURLs *model14 = [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/newslist-a2-pm1-v4.6.6-c0-nt1-p2-s30-l20150330110804866160.html" andName:@"汽车之家新闻"];
    MyURLs *model15 = [MyURLs myurlsShared:@"http://app.api.autohome.com.cn/autov4.6/news/newslist-a2-pm1-v4.6.6-c0-nt0-p1-s30-l0.html" andName:@"汽车之家最新"];
    MyURLs *model16 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiVideoesNormal.php?sn=&action=c&pn=&OSType=iOS8.2&v=77" andName:@"视屏分类"];
    MyURLs *model17 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiVideoesNormal.php?v=77&action=l&p=1&OSType=iOS8.2&src=letv&tag=topN" andName:@"视屏排行榜"];
    MyURLs *model18 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiVideoesNormal.php?v=77&action=l&p=1&OSType=iOS8.2&src=letv&tag=newest" andName:@"视屏最新"];
    MyURLs *model19 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiRunes.php?v=77&OSType=iOS8.2" andName:@"游戏百科符文列表"];
    MyURLs *model20 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiGift.php?v=77&OSType=iOS8.2" andName:@"游戏百科天赋"];
    MyURLs *model21 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiSumAbility.php?v=77&OSType=iOS8.2" andName:@"游戏百科召唤师技能"];
    MyURLs *model22 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiZBItemList.php?tag=Tools&v=77&OSType=iOS8.2&versionName=2.1.7" andName:@"游戏百科装备分类工具"];
    MyURLs *model23 = [MyURLs myurlsShared:@"http://box.dwstatic.com/apiHeroBestGroup.php?v=77&OSType=iOS8.2" andName:@"游戏百科最佳阵容"];
    MyURLs *model24 = [MyURLs myurlsShared:@"http://m.pai.duowan.com/mobileapi/goodslist2?app=lolbox&g_cid=&app_ver=12&d_uuid=973D563D-097D-4980-97AD-3E2721705ED0&platform=ios" andName:@"元宝商城，盒子福利"];
    MyURLs *model25 = [MyURLs myurlsShared:@"http://data.3g.yy.com/data/liveList?&appid=200100&model=iPhone5,2&os=iOS&osVersion=8.2&yyVersion=2.1.7&ispType=2&netType=2&channel=appstore&dataCode=1001&page=1&subDataCode=38" andName:@"直播美女秀搞笑"];
    MyURLs *model26 = [MyURLs myurlsShared:@"http://data.3g.yy.com/data/liveList?&appid=200100&model=iPhone5,2&os=iOS&osVersion=8.2&yyVersion=2.1.7&ispType=2&netType=2&channel=appstore&dataCode=1001&page=1&subDataCode=35" andName:@"直播美女秀好声音"];
    MyURLs *model27 = [MyURLs myurlsShared:@"http://data.3g.yy.com/data/liveList?&appid=200100&model=iPhone5,2&os=iOS&osVersion=8.2&yyVersion=2.1.7&ispType=2&netType=2&channel=appstore&dataCode=1001&page=1&subDataCode=36" andName:@"直播美女秀-女神"];
    MyURLs *model28 = [MyURLs myurlsShared:@"http://data.3g.yy.com/data/liveList?&appid=200100&model=iPhone5,2&os=iOS&osVersion=8.2&yyVersion=2.1.7&ispType=2&netType=2&channel=appstore&dataCode=1001&page=1&subDataCode=0" andName:@"直播美女秀推荐"];
    MyURLs *model29 = [MyURLs myurlsShared:@"http://lolbox.duowan.com/phone/apiZBItemList.php?tag=GoldPer&v=77&OSType=iOS8.2&versionName=2.1.7" andName:@"装备分类工资"];
    return @[model1,model2,model10,model7,model27,model3,model4,model5,model6,model8,model9,model11,model12,model13,model14,model15,model16,model17,model18,model19,model20,model21,model22,model23,model24,model25,model26,model28,model29];
}
@end
