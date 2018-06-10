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

@interface ViewController ()<UIPopoverControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UIButton *hiddenBtn;

@end

@implementation ViewController
{
    UIPopoverController *popoverCtr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showPopover:(UIButton *)sender {
    
    OneViewController *oneCtr = [[OneViewController alloc] init];
    //设置这个后，popoverContentSize将无效
    //oneCtr.preferredContentSize = CGSizeMake(200, 200);
    //初始化
    popoverCtr = [[UIPopoverController alloc] initWithContentViewController: oneCtr];
    
    //设置弹出框大小，不设置时系统会自动调整
    popoverCtr.popoverContentSize = CGSizeMake(100, 300);
    //能穿透弹出框进行交互的view，默认没有。此处弹出框显示的情况下，hiddenBtn仍能触发
    popoverCtr.passthroughViews = @[self.hiddenBtn];
    //设置背景色,包括了箭头的颜色，默认白色
    //popoverCtr.backgroundColor = [UIColor clearColor];
    //popoverCtr.popoverLayoutMargins = UIEdgeInsetsMake(100, 100, 100, 100);
    //自定义背景view,需要重写多个方法。
    //popoverCtr.popoverBackgroundViewClass = [CustomPopoverBackgroundView class];
    //代理
    popoverCtr.delegate = self;
    //展示弹出框。即给出view的某一块rect,然后箭头出现在这块区域的上/左/下/右的中间。
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

- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController {
    NSLog(@"是否隐藏弹出框");
    return YES;
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    NSLog(@"弹出框消失后调用,但如果直接使用dismissPopoverAnimated:方法，不会调用");
}

- (void)popoverController:(UIPopoverController *)popoverController willRepositionPopoverToRect:(inout CGRect *)rect inView:(inout UIView *__autoreleasing  _Nonnull *)view {
    NSLog(@"屏幕旋转时调用，在显示的情况下，改变位置大小改变时不调用");
}


@end
