//
//  OneViewController.m
//  TransitionDemo
//
//  Created by henry on 2018/6/13.
//  Copyright © 2018年 henry. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TwoViewController * oneCtr = [[TwoViewController alloc] init];
    oneCtr.preferredContentSize = CGSizeMake(300, 300);
    oneCtr.modalPresentationStyle = UIModalPresentationPopover;
    
    UIPopoverPresentationController *presentationCtr = [oneCtr popoverPresentationController];
    presentationCtr.permittedArrowDirections = UIPopoverArrowDirectionUp;
    presentationCtr.sourceRect = self.view.bounds;
    presentationCtr.sourceView = self.view;
   // presentationCtr.delegate = self;
   // presentationCtr.passthroughViews = @[self.hiddenBtn];
    [self presentViewController:oneCtr animated:YES completion:nil];
    
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
