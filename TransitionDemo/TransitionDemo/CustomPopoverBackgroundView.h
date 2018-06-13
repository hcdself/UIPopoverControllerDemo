//
//  CustomPopoverBackgroundView.h
//  TransitionDemo
//
//  Created by henry on 2018/6/13.
//  Copyright © 2018年 henry. All rights reserved.
//
/*
 自定义弹出框背景
 
 
 
 */
#import <UIKit/UIKit.h>

@interface CustomPopoverBackgroundView : UIPopoverBackgroundView

//用于绘制箭头，如果不绘制，将没有箭头
@property (nonatomic, strong) UIImageView *arrowImageView;

@end
