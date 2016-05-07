//
//  TestDraw.m
//  BasicGraphics
//
//  Created by mac on 16/5/6.
//  Copyright © 2016年 weifengdq. All rights reserved.
//

#import "TestDraw.h"

@implementation TestDraw

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    /*------------------- 直线 ----------------------*/
    // UIBezierPath 实例
    UIBezierPath *line = [UIBezierPath bezierPath];
    
    // 起点
    [line moveToPoint:CGPointMake(50,50)];
    // 终点
    [line addLineToPoint:CGPointMake(250,15)];
    
    // 画笔颜色
    [[UIColor redColor] setStroke];
    // 线宽
    line.lineWidth = 2;
    // 绘制
    [line stroke];
    
    
    /*------------------- 三角形 --------------------*/
    //本质就是三条直线
    UIBezierPath *triangle = [UIBezierPath bezierPath];
    
    //2条线(60, 60)->(85, 90), (85, 90)->(70, 120)
    [triangle moveToPoint:CGPointMake(60, 60)];
    [triangle addLineToPoint:CGPointMake(85, 90)];
    [triangle addLineToPoint:CGPointMake(70, 120)];
    
    //闭合路径
    [triangle closePath];
    
    // 绘制
    [[UIColor orangeColor] setStroke];
    triangle.lineWidth = 3;
    [triangle stroke];
    
    // 填充
    //[[UIColor grayColor] setFill];
    //[triangle fill];
    
    
    /*------------------- 椭圆 ----------------------*/
    //矩形内的椭圆(ellipse或oval), 矩形起始坐标(120, 40), 长度140, 高度60
    UIBezierPath *ellipse =
        [UIBezierPath bezierPathWithOvalInRect: CGRectMake(120.0f, 40.0f, 140.0f, 60.0f)];

    //绘制
    [[UIColor yellowColor] setStroke];
    ellipse.lineWidth = 3;
    [ellipse stroke];
    
    // 填充
    [[UIColor grayColor] setFill];
    [ellipse fill];
    
    
    /*------------------- 矩形 ----------------------*/
    //矩形起始坐标(20, 150) 长100 高60
    UIBezierPath *rectangle =
        [UIBezierPath bezierPathWithRect:CGRectMake(30, 150, 100, 60)];
    [[UIColor greenColor] setStroke];
    
    //虚线, 每10个点显示, 5个点不显示, 偏移为0
    CGFloat dashPattern0[2] = {10.0f, 5.0f};
    [rectangle setLineDash:dashPattern0  count:2 phase:0];
    rectangle.lineWidth = 3;
    [rectangle stroke];
    
    
    /*----------------- 圆角矩形 --------------------*/
    //矩形起始坐标(150, 120) 长110 高50
    UIBezierPath *roundRect =
        [UIBezierPath bezierPathWithRoundedRect:CGRectMake(150, 120, 110, 50) cornerRadius:10.0F];
    [[UIColor cyanColor] setStroke];
    roundRect.lineWidth = 3;
    [roundRect stroke];
    
    
    /*------------------- 圆弧 --------------------*/
    //圆心(200, 250), 半径49 开始角度0 结束角度pi*3/2 顺时针方向
    UIBezierPath* arc = [UIBezierPath bezierPathWithArcCenter:
       CGPointMake(200,250) radius:49.0f startAngle:0 endAngle:M_PI*3/2 clockwise:YES];
    UIColor *aColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    [aColor setStroke];
    arc.lineWidth = 10;
    // 设置图案的虚线
    CGFloat dashPattern[2] = {3.0f, 10.0f};
    [arc setLineDash:dashPattern  count:2 phase:0];
    [arc stroke];
    
    
    /*------------- 二阶贝塞尔曲线 ----------------*/
    UIBezierPath *quadCurve = [UIBezierPath bezierPath];
    [quadCurve moveToPoint:CGPointMake(30, 250)];
    [quadCurve addQuadCurveToPoint:CGPointMake(150, 300) controlPoint:CGPointMake(0, 350)];
    [[UIColor purpleColor] setStroke];
    quadCurve.lineWidth = 3;
    [quadCurve stroke];
    
    
    /*------------- 三阶贝塞尔曲线 ----------------*/
    UIBezierPath *curve = [UIBezierPath bezierPath];
    [curve moveToPoint:CGPointMake(30, 350)];
    [curve addCurveToPoint:CGPointMake(300, 400) controlPoint1:CGPointMake(100, 480) controlPoint2:CGPointMake(200, 220)];
    [[UIColor magentaColor] setStroke];
    curve.lineWidth = 3;
    [curve stroke];

}

@end


































