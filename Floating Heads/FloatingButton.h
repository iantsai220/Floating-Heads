//
//  FloatingButton.h
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FloatingButton : UIButton
//
//@property (nonatomic, strong) UIImage *image;
//
//@property (nonatomic, assign) CGRect frame;
//
//@property (nonatomic, strong) UIColor *color;


- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image backgroundColor:(UIColor *)color;

-(void)setupTint:(UIColor *)whiteColor setBackground:(UIColor *)blueColor;


@end
