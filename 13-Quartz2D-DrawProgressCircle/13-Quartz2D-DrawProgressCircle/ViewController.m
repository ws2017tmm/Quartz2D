//
//  ViewController.m
//  13-Quartz2D-DrawProgressCircle
//
//  Created by XSUNT45 on 15/12/24.
//  Copyright (c) 2015年 XSUNT45. All rights reserved.
//

#import "ViewController.h"
#import "WSProgressView.h"

@interface ViewController ()

- (IBAction)slipSlider:(UISlider *)slider;

@property (weak, nonatomic) IBOutlet WSProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slipSlider:(UISlider *)slider {
    NSLog(@"slider.value = %.2f",slider.value);
    
    self.progressView.progressValue = slider.value;
}
@end
