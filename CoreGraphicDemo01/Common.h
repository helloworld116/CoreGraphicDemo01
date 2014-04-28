//
//  Common.h
//  CoreGraphicDemo01
//
//  Created by 文正光 on 14-4-28.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Common : NSObject
void drawLinearGradient(CGContextRef context, CGRect rect, CGColorRef startColor, CGColorRef endColor);
CGRect rectFor1PxStroke(CGRect rect);
@end
