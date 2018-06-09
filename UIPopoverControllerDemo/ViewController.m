//
//  ViewController.m
//  UIPopoverControllerDemo
//
//  Created by mac on 2018/6/9.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "CustomPopoverBackgroundView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UIButton *hiddenBtn;

@end

@implementation ViewController
{
    UIPopoverController *popoverCtr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (IBAction)showPopover:(UIButton *)sender {
    
    OneViewController *oneCtr = [[OneViewController alloc] init];
    //初始化
    popoverCtr = [[UIPopoverController alloc] initWithContentViewController: oneCtr];
    //设置弹出框大小，不设置时系统会自动调整
    popoverCtr.popoverContentSize = CGSizeMake(100, 300);
    //能穿透弹出框进行交互的view，默认没有。此处弹出框显示的情况下，hiddenBtn仍能触发
    popoverCtr.passthroughViews = @[self.hiddenBtn];
    //设置背景色,包括了箭头的颜色，默认白色
    //popoverCtr.backgroundColor = [UIColor clearColor];
    
    //自定义背景view
    popoverCtr.popoverBackgroundViewClass = [CustomPopoverBackgroundView class];
    
    //展示弹出框
    [popoverCtr presentPopoverFromRect:self.showBtn.bounds inView:self.showBtn permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"hello world");
}

- (IBAction)hiddePopover:(UIButton *)sender {
    //隐藏弹出框，在弹出框外点击，如果没有穿透的view,弹出框也会消失
    //[popoverCtr dismissPopoverAnimated:YES];
    
    //在弹出框显示的情况下，可以改变与它关联的控制器和大小。如果弹出框已经消失，执行以下方法会崩溃
    TwoViewController *twoCtr = [[TwoViewController alloc] init];
    popoverCtr.contentViewController = twoCtr;
    popoverCtr.popoverContentSize = CGSizeMake(200, 200);
    
}







@end
