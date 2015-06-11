//
//  UIColor+FlatColor.m
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "UIColor+FlatColor.h"

@implementation UIColor (FlatColor)

+(UIColor *)flatWhiteColor {
    
    return [UIColor colorWithRed:0.9274 green:0.9436 blue:0.95 alpha:1.0];
}

+(UIColor *)flatBlackColor {
    
    return [UIColor colorWithRed:0.1674 green:0.1674 blue:0.1674 alpha:1.0];
}

+(UIColor *)flatBlueColor {
    
    return [UIColor colorWithRed:0.3132 green:0.3974 blue:0.6365 alpha:1.0];
}

+(UIColor *)flatRedColor {
    
    return [UIColor colorWithRed:0.9115 green:0.2994 blue:0.2335 alpha:1.0];
}

+(UIImage *)pixelImage {
    
    CGRect rect = CGRectMake(0, 0, 1.0, 1.0);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [[UIColor flatBlackColor] CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
    
    
}














@end
