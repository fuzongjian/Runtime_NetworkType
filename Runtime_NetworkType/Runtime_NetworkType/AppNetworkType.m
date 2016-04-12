//
//  AppNetworkType.m
//  Runtime_NetworkType
//
//  Created by 陈舒澳 on 16/4/12.
//  Copyright © 2016年 xingbida. All rights reserved.
//

#import "AppNetworkType.h"
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>


@implementation AppNetworkType
+ (NSString *)getAppNetworkType{
    UIApplication * app = [UIApplication sharedApplication];
    NSArray * array = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    for (id child in array) {
        /**
            当没有网络时，隐藏UIStatusBarDataNetworkItemView，无法获取_dataNetworkType值
         */
         //拿到状态栏,
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {

            //遍历状态栏，拿到相关的属性
//            unsigned int outCount ;
//            Ivar * ivars = class_copyIvarList([child class], &outCount);
//            for (int i = 0; i < outCount; i ++) {
//                Ivar ivar = ivars[i];
//                NSLog(@"%s",ivar_getName(ivar));
//            }
            
            return [[child valueForKey:@"dataNetworkType"] description];
        }
    }
    return [NSString stringWithFormat:@"%d",0];
}
/**
 
    _dataNetworkType
    _wifiStrengthRaw
    _wifiStrengthBars
    _enableRSSI
    _showRSSI
 
 
 */
@end
