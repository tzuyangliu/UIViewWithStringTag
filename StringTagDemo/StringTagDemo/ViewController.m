//
//  ViewController.m
//  StringTagDemo
//
//  Created by 刘子洋 on 15/8/18.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "ViewController.h"
#import "UIView+StringTag.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    aView.tagString = @"aView";
    UIView *bView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    bView.tagString = @"bView";
    [self.view addSubview:aView];
    [aView addSubview:bView];

    UIView *targetView = [self.view viewWithStringTag:@"bView"];

    NSLog(@"%@", targetView);
    // <UIView: 0x7f933bc21e50; frame = (0 0; 100 100); layer = <CALayer: 0x7f933bc1c430>>
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
