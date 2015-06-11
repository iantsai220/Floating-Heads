//
//  ViewController.h
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FloatingButton.h"
#import "FloatingMenuViewController.h"

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet FloatingButton *addButton;

- (IBAction)showBlurView:(FloatingButton *)sender;


@end

