//
//  OneViewController.m
//  UIPopoverControllerDemo
//
//  Created by mac on 2018/6/9.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"good morning");
}

- (void)dealloc {
    
}


@end
