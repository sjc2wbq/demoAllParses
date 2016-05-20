//
//  NSObject+URLSession.h
//  waterFall
//
//  Created by Tarena on 16/1/29.
//  Copyright © 2016年 shijunchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (URLSession)
+(id)GET:(NSString *)path completionHandle:(void(^)(id model,NSError *error))completionHandle;
@end
