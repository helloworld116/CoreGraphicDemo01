//
//  Common.m
//  CoreGraphicDemo01
//
//  Created by 文正光 on 14-4-28.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "Common.h"

@implementation Common
void drawLinearGradient(CGContextRef context, CGRect rect, CGColorRef startColor, CGColorRef endColor){
    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
    CGFloat locations[] = {0.0,1.0};
    NSArray *colors = @[(__bridge id)startColor,(__bridge id)endColor];
    CGGradientRef gradient = CGGradientCreateWithColors(space, (__bridge CFArrayRef)colors, locations);
    
    CGPoint startPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMinY(rect));
    CGPoint endPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMaxY(rect));
    
    CGContextSaveGState(context);
    CGContextAddRect(context, rect);
    CGContextClip(context);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
    CGContextRestoreGState(context);
    
    CFRelease(gradient);
    CFRelease(space);
}

CGRect rectFor1PxStroke(CGRect rect){
    return CGRectMake(rect.origin.x+0.5, rect.origin.y+0.5, rect.size.width-1, rect.size.height-1);
}
@end
