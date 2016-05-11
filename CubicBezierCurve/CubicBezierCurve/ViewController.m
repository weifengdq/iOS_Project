//
//  ViewController.m
//  CubicBezierCurve
//
//  Created by mac on 16/5/6.
//  Copyright © 2016年 weifengdq. All rights reserved.
//

#import "ViewController.h"
#import "BezierCurve.h"
#import "UIBezierPath+Interpolation.h"
#import "CRVINTERGraphicsView.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    //黑色背景下设置状态栏为亮色
    [self preferredStatusBarStyle];
    
    BezierCurve *bezierCurveView = [[BezierCurve alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:bezierCurveView];
    
    CGPoint point = CGPointMake(0.0, 1.0);
    const char *encoding1 = @encode(CGPoint);
    NSMutableArray *array1 = [[NSMutableArray alloc] init];
    [array1 addObject:[NSValue valueWithBytes:&point objCType:encoding1];
    
//    CGPoint p = CGPointMake(10, 20);
//    
//    [array addObject:[NSValue valueWithCGPoint:CGPointMake(0, 0)]];
//    [array addObject:[NSValue valueWithCGPoint:CGPointMake(0, 1)]];
//    [array addObject:[NSValue valueWithCGPoint:CGPointMake(1, 1)]];
//    [array addObject:[NSValue valueWithCGPoint:CGPointMake(1, 0)]];
//    
//    UIBezierPath *path = interpolateCGPointsWithCatmullRom:array closed:NO alpha:0.5;
    
    
    // Add 4 CGPoints as NSValue
//    [array addObject:[NSValue valueWithBytes:&p];
//     [array addObject:[NSValue valueWithBytes:&CGPointMake(0.0, 1.0) objCType:encoding];
//      [array addObject:[NSValue valueWithBytes:&CGPointMake(1.0, 1.0) objCType:encoding];
//       [array addObject:[NSValue valueWithBytes:&CGPointMake(1.0, 0.0) objCType:encoding];
    
    
        // Use the path
    
//    CGFloat ten=10.0f;
//    CGPoint point = CGPointMake(0.0f, 0.0f);
//    CGSize size = CGSizeMake(10.0f, 10.0f);
//    CGRect rect = CGRectMake(point.x, point.y, size.width, size.height);
//    NSLog(@"ten: %f", ten);
//    NSLog(@"point: %@", NSStringFromCGPoint(point));
//    NSLog(@"size: %@", NSStringFromCGSize(size));
//    NSLog(@"rect: %@", NSStringFromCGRect(rect));
    
//    NSArray *arr = @[(@1,@2), (@3,@4)];
//    NSLog(@"arr=%@", arr);
//    NSLog(@"arr0=%@", arr[0]);
    
//    CGPoint *p1 = [arr[0] CGPointValue];
//    NSLog(<#NSString * _Nonnull format, ...#>)

    
}

//设置状态栏为白色
- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end
