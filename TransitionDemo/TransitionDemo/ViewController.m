//
//  ViewController.m
//  TransitionDemo
//
//  Created by henry on 2018/6/13.
//  Copyright © 2018年 henry. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "CustomPopoverBackgroundView.h"
#import "CustomPopoverPresentationController.h"


@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UIButton *hiddenBtn;

@end

@implementation ViewController
{
    OneViewController *oneCtr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (IBAction)show:(UIButton *)sender {
    oneCtr = [[OneViewController alloc] init];
    oneCtr.preferredContentSize = CGSizeMake(100, 400);
    oneCtr.modalPresentationStyle = UIModalPresentationPopover;
    
    UIPopoverPresentationController *presentationCtr = [oneCtr popoverPresentationController];
    presentationCtr.permittedArrowDirections = UIPopoverArrowDirectionLeft;

    presentationCtr.sourceRect = sender.bounds;
    presentationCtr.sourceView = sender;
    presentationCtr.delegate = self;
    presentationCtr.passthroughViews = @[self.hiddenBtn];
    presentationCtr.popoverLayoutMargins = UIEdgeInsetsMake(100, 100, 100, 100);
    
   // presentationCtr.popoverBackgroundViewClass = [CustomPopoverBackgroundView class];
    [self presentViewController:oneCtr animated:YES completion:nil];
    
}

- (void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    NSLog(@"%s",__func__);
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    NSLog(@"%s",__func__);
    return YES;
}

- (void)popoverPresentationController:(UIPopoverPresentationController *)popoverPresentationController willRepositionPopoverToRect:(inout CGRect *)rect inView:(inout UIView *__autoreleasing  _Nonnull *)view {
    NSLog(@"%s",__func__);
}

- (IBAction)hidden:(UIButton *)sender {
    
    
   // oneCtr.preferredContentSize = CGSizeMake(100, 100);
    UIPopoverPresentationController *presentationCtr = [oneCtr popoverPresentationController];
    
//    presentationCtr.permittedArrowDirections = UIPopoverArrowDirectionUp;
//    presentationCtr.sourceRect = sender.bounds;
//    presentationCtr.sourceView = sender;
//    presentationCtr.delegate = self;

//    TwoViewController *twoCtr = [[TwoViewController alloc] init];
//    presentationCtr.presentedViewController = twoCtr;
    
    NSLog(@"%@\n%@",self.presentedViewController,NSStringFromUIEdgeInsets(presentationCtr.popoverLayoutMargins));
    
}



@end
