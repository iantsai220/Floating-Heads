//
//  FloatingMenuViewController.m
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "FloatingMenuViewController.h"


@interface FloatingMenuViewController ()


@end

@implementation FloatingMenuViewController


- (instancetype)initWithView:(UIView *)view
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        
        self.fromView = view;
        self.modalPresentationStyle = UIModalPresentationOverFullScreen;
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blurView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
    self.blurView.frame = self.view.frame;
    [self.view addSubview:self.blurView];
    
    self.closeButton = [[FloatingButton alloc] initWithFrame:CGRectMake(40.0, 40.0, 50.0, 50.0) image:[UIImage imageNamed:@"icon-close"] backgroundColor:[UIColor flatRedColor]];
    [self.view addSubview:self.closeButton];
    
    [self.closeButton addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [self configureButtons];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closePressed:(FloatingButton *)sender {
    
    [self.delegate closePressed];
}


- (IBAction)buttonPressed:(FloatingButton *)sender {
    
    [self.delegate buttonPressed:sender];
    
}

-(void)configureButtons {
    
    self.closeButton.center = self.fromView.center;
    
    self.closeButton.transform = CGAffineTransformMakeRotation(M_PI_2);
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.closeButton.transform = CGAffineTransformIdentity;
    }];
    
    // Load floating buttons above close button
    [self.buttonItems  enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        UIButton* button = (UIButton*)obj;
        
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        button.center = self.closeButton.center;
        button.alpha = 0.5;
        button.transform = CGAffineTransformMakeRotation(M_PI_2);
        [self.view insertSubview:button belowSubview:self.closeButton];
        if (idx == 0) {
            button.alpha = 1.0;
            [self.view bringSubviewToFront:button];
        }
        
        // Animate to open positions
        [UIView animateWithDuration:0.5 animations:^{
            
            CGFloat centerY = button.center.y - (idx + 1) * (self.closeButton.bounds.size.height + self.buttonPadding);
            button.center = CGPointMake(button.center.x, centerY);
            
            button.alpha = 1.0;
            button.transform = CGAffineTransformIdentity;
        }];
    }];
    
}

-(void)dismiss:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
