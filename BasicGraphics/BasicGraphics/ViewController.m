//
//  ViewController.m
//  BasicGraphics
//
//  Created by mac on 16/5/6.
//  Copyright © 2016年 weifengdq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置view背景色为黑色
    //self.view.backgroundColor = [UIColor blackColor];
    
    //黑色背景下设置状态栏为亮色
    [self preferredStatusBarStyle];
    NSLog(@"Hello, world!");
    
    //绘图区域默认黑色
    TestDraw *testDraw = [[TestDraw alloc] initWithFrame:
        CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
    [self.view addSubview:testDraw];
    
}

//设置状态栏为白色
- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end
