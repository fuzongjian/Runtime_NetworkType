//
//  ViewController.m
//  Runtime_NetworkType
//
//  Created by 陈舒澳 on 16/4/12.
//  Copyright © 2016年 xingbida. All rights reserved.
//

#import "ViewController.h"
#import "AppNetworkType.h"
#import "App_iPhone_IP.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     NSLog(@"%@",[AppNetworkType getAppNetworkType]);
     NSLog(@"%@",[App_iPhone_IP getIP:YES]);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
