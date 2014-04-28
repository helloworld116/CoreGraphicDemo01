//
//  CustomCellBackgroundView.m
//  CoreGraphicDemo01
//
//  Created by 文正光 on 14-4-28.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "CustomCellBackgroundView.h"
#import "Common.h"

@implementation CustomCellBackgroundView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/
- (void)drawRect:(CGRect)rect
{
    // Drawing code
//    first
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    UIColor *color = [UIColor redColor];
//    
//    CGContextSetFillColorWithColor(context, color.CGColor);
//    CGRect newRect = self.bounds;
////    newRect.origin = CGPointMake(newRect.size.width/4, newRect.size.height/4);
////    newRect.size = CGSizeMake(newRect.size.width/2, newRect.size.height/2);
//    CGContextFillRect(context, newRect);
    
    
//    second
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    UIColor *whiteColor = [UIColor whiteColor];
//    UIColor *lightColor = [UIColor lightGrayColor];
//    drawLinearGradient(context, self.bounds, whiteColor.CGColor, lightColor.CGColor);
//    CGRect strokeRect = CGRectInset(self.bounds, 5, 5);
////    CGRect strokeRect = rectFor1PxStroke(CGRectInset(rect, 5, 5));
//    UIColor *redColor = [UIColor redColor];
//    CGContextSetStrokeColorWithColor(context, redColor.CGColor);
//    CGContextSetLineWidth(context, 1);
//    CGContextStrokeRect(context, strokeRect);
    
//    thrid
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *lightColor = [UIColor lightGrayColor];
    drawLinearGradient(context, self.bounds, whiteColor.CGColor, lightColor.CGColor);
    
    CGRect strokeRect = self.bounds;
    strokeRect.size.height-=1;
    strokeRect = rectFor1PxStroke(strokeRect);
    CGContextSetStrokeColorWithColor(context, whiteColor.CGColor);
    
    CGContextSetLineWidth(context, 1);
    CGContextStrokeRect(context, strokeRect);
    
}


@end
