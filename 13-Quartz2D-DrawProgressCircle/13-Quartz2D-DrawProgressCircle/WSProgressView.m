//
//  WSProgressView.m
//  13-Quartz2D-DrawProgressCircle
//
//  Created by XSUNT45 on 15/12/24.
//  Copyright (c) 2015年 XSUNT45. All rights reserved.
//

#import "WSProgressView.h"

@implementation WSProgressView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat midX = rect.size.width * 0.5;
    CGFloat midY = rect.size.height * 0.5;
    
    //画文字
    
    //得到文字
    NSString *text = [NSString stringWithFormat:@"%.2f",self.progressValue];
    
    //设置文字画的位置
    CGFloat textW = 30;
    CGFloat textH = 30;
    CGFloat textX = (rect.size.width - textW)*0.5;
    CGFloat textY = (rect.size.height - textH)*0.5;
    NSDictionary *attrDict = @{NSForegroundColorAttributeName:[UIColor redColor]};
    [text drawInRect:CGRectMake(textX, textY+8, textW, textH) withAttributes:attrDict];
    
    //画圆弧
    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetRGBStrokeColor(context, 0.3, 0.5, 0.7, 1);
    [[UIColor greenColor] set];
    CGFloat endAngle = _progressValue * M_PI * 2 - M_PI_4;
    CGContextAddArc(context, midX, midY, 30, -M_PI_4, endAngle, 0);
    CGContextStrokePath(context);
}

-(void)setProgressValue:(float)progressValue{
    
    _progressValue = progressValue;
    
    [self setNeedsDisplay];
}

@end
