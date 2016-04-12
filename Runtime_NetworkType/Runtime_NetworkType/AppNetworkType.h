//
//  AppNetworkType.h
//  Runtime_NetworkType
//
//  Created by 陈舒澳 on 16/4/12.
//  Copyright © 2016年 xingbida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppNetworkType : NSObject
/**
    0 没有网络
    1 2G
    2 3G
    3 4G
    5 wifi
 */
+ (NSString *)getAppNetworkType;
@end
