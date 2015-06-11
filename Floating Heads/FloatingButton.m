//
//  FloatingButton.m
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "FloatingButton.h"
#import "UIColor+FlatColor.h"

@implementation FloatingButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image backgroundColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        
        self.frame = frame;
        [self setImage:image forState:UIControlStateNormal];
        [self setupTint:[UIColor flatWhiteColor] setBackground:color];
        [self setBackgroundImage:[UIColor pixelImage] forState:UIControlStateHighlighted];
   
    }
    return self;
}


-(void)awakeFromNib {
    
    [self setupTint:[UIColor flatWhiteColor] setBackground:[UIColor flatBlueColor]];
    
}

-(void)setupTint:(UIColor *)whiteColor setBackground:(UIColor *)blueColor {
    
    self.tintColor = whiteColor;
    self.backgroundColor = blueColor;
    self.layer.cornerRadius = 25;
    self.layer.masksToBounds = YES;
    
    [self setBackgroundImage:[UIColor pixelImage] forState:UIControlStateHighlighted];
    
}

@end
