//
//  LineLabel.m
//  LineLabel
//
//  Created by 黄海燕 on 16/4/24.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "LineLabel.h"

@implementation LineLabel


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    /*
        1.获取到上下文CGContextRef
        2.设置画线的起点位置
        3.画线，并画到另一个点的位置
        4.渲染到屏幕上面
     */
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 0, rect.size.height/2);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height/2);
    CGContextStrokePath(context);
}


@end
