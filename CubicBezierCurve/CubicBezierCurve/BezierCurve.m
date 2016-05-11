//
//  BezierCurve.m
//  CubicBezierCurve
//
//  Created by mac on 16/5/6.
//  Copyright © 2016年 weifengdq. All rights reserved.
//

#import "BezierCurve.h"

@implementation BezierCurve

- (void)drawRect:(CGRect)rect {
    
    
    NSArray *tempArr = @[@"22", @"20", @"18", @"18",  @"15", @"10", @"6", @"9", @"15", @"20", @"22", @"24", @"22", @"20", @"18", @"18",  @"18", @"15", @"13", @"10", @"8", @"10", @"12", @"14"];
    //NSLog(@"%@", tempArr);
    
    for (int i=0; i<21; i++) {
        float x0 = 320/24.0 * i;
        float x1 = 320/24.0 * (i+1);
        float x2 = 320/24.0 * (i+2);
        float x3 = 320/24.0 * (i+3);
        
        float y0 = [tempArr[i] floatValue] * 10;
        float y1 = [tempArr[i+1] floatValue] * 10;
        float y2 = [tempArr[i+2] floatValue] * 10;
        float y3 = [tempArr[i+3] floatValue] *10;
        
        //得到控制点
        float Ax = x1 + (x2 - x0) * 0.25;
        float Ay = y1 + (y2 - y0) * 0.25;
        
        float Bx = x2 - (x3 - x1) * 0.25;
        float By = y2 - (y3 - y1) * 0.25;
        
        if (i == 20) {
            // UIBezierPath 实例
            UIBezierPath *line = [UIBezierPath bezierPath];
            // 起点
            [line moveToPoint:CGPointMake(x2-2, y2)];
            // 终点
            [line addLineToPoint:CGPointMake(x2+2 , y2)];
            // 画笔颜色
            [[UIColor yellowColor] setStroke];
            // 线宽
            line.lineWidth = 3;
            // 绘制
            [line stroke];
        }
        
        //标记点---------------------------------------
        // UIBezierPath 实例
        UIBezierPath *line = [UIBezierPath bezierPath];
        // 起点
        [line moveToPoint:CGPointMake(x1-2, y1)];
        // 终点
        [line addLineToPoint:CGPointMake(x1+2 , y1)];
        // 画笔颜色
        [[UIColor yellowColor] setStroke];
        // 线宽
        line.lineWidth = 3;
        // 绘制
        [line stroke];
        
        /*------------- 三阶贝塞尔曲线 ----------------*/
        UIBezierPath *curve = [UIBezierPath bezierPath];
        [curve moveToPoint:CGPointMake(x1, y1)];
        [curve addCurveToPoint:CGPointMake(x2, y2) controlPoint1:CGPointMake(Ax, Ay) controlPoint2:CGPointMake(Bx , By)];
        [[UIColor magentaColor] setStroke];
        curve.lineWidth = 2;
        [curve stroke];
    }
    
}

//- (void)drawBezierCurve:(NSArray *)tempArr {
//    float viewWidth = self.bounds.size.width;
//    float viewHeight = self.bounds.size.height;
//    
//    //取出最大值和最小值
//    for (NSString *temp in tempArr) {
////        temp = tempArr
//        NSInteger max = [[tempArr valueForKeyPath:@"@max.intValue"] integerValue];
//        
//        //参考: http://blog.csdn.net/u014084081/article/details/39477269
//        
//        NSArray *numbers = @[@2.1, @8.1, @5.0, @.3];
//        numbers = [numbers sortedArrayUsingSelector:@selector(compare:)];
//        
//        float min = [numbers[0] floatValue];
//        float max = [[numbers lastObject] floatValue];
//        
//        NSNumber *max=[numbers valueForKeyPath:@"@max.doubleValue"];
//        NSNumber *min=[numbers valueForKeyPath:@"@min.doubleValue"];
//    }
//    
//    for (int i = 0; i < tempArr.count; i++) {
//        float x0 = viewWidth/(tempArr.count - 1) * i;
//        float x1 = viewWidth/(tempArr.count - 1) * (i+1);
//        float x2 = viewWidth/(tempArr.count - 1) * (i+2);
//        float x3 = viewWidth/(tempArr.count - 1) * (i+2);
//        
//        float y0 =
//        
//    }
//}

@end





























