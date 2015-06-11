//
//  FloatingMenuViewController.h
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FloatingButton.h"
#import "UIColor+FlatColor.h"

typedef enum direction {
    
    up = 0,
    left
    
}Direction;

@protocol FloatingMenuViewControllerDelegate <NSObject>

- (void)closePressed;

- (void)buttonPressed:(UIButton*)button;

@end

@interface FloatingMenuViewController : UIViewController

@property (nonatomic, strong) UIView *fromView;

@property (nonatomic, strong) UIVisualEffectView *blurView;

@property (nonatomic, strong) FloatingButton *closeButton;

@property (nonatomic, assign) Direction defaultButtonDirection;

@property (nonatomic, assign) CGFloat buttonPadding;

@property (nonatomic, strong) NSMutableArray *buttonItems;

@property (nonatomic, weak) id<FloatingMenuViewControllerDelegate> delegate;

- (instancetype)initWithView:(UIView *)view;


@end
