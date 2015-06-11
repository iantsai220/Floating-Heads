//
//  ViewController.m
//  Floating Heads
//
//  Created by Ian Tsai on 2015-06-10.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *buttonArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.buttonArray = [NSMutableArray array];
    
    self.buttonArray = [self getButtons];
    
}

-(void)awakeFromNib {
    
    [super awakeFromNib];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)closePressed {
    
    NSLog(@"Floating close button pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)buttonPressed:(UIButton*)button {
    
    NSLog(@"Floating button pressed: %@", button);
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)showBlurView:(FloatingButton *)sender {
    
    FloatingMenuViewController *floatingVC = [[FloatingMenuViewController alloc] initWithView:self.addButton];
    floatingVC.buttonItems = self.buttonArray;
    floatingVC.buttonPadding = 20;
    [self presentViewController:floatingVC animated:YES completion:nil];
    
}

-(NSMutableArray *)getButtons {
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    CGRect buttonFrame = CGRectMake(0, 0, self.addButton.frame.size.width, self.addButton.frame.size.height);
    
    FloatingButton *button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"icon-add"] backgroundColor:[UIColor flatBlackColor]];
    [tempArray addObject:button];
    
    button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"model-004"] backgroundColor:[UIColor flatWhiteColor]];
    [tempArray addObject:button];
    
    button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"model-005"] backgroundColor:[UIColor flatWhiteColor]];
    [tempArray addObject:button];
    
    button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"model-006"] backgroundColor:[UIColor flatWhiteColor]];
    [tempArray addObject:button];
    
    button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"model-007"] backgroundColor:[UIColor flatWhiteColor]];
    [tempArray addObject:button];
    
    button = [[FloatingButton alloc] initWithFrame:buttonFrame image:[UIImage imageNamed:@"model-008"] backgroundColor:[UIColor flatWhiteColor]];
    [tempArray addObject:button];
    
    return tempArray;
    
}
@end
