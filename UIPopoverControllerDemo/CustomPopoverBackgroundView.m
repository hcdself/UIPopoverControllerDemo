//
//  CustomPopoverBackgroundView.m
//  UIPopoverControllerDemo
//
//  Created by mac on 2018/6/9.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "CustomPopoverBackgroundView.h"

@implementation CustomPopoverBackgroundView

//箭头底部宽度
+ (CGFloat)arrowBase {
    return 0;
}

//内容偏移，效果上看是阴影的部分
+ (UIEdgeInsets)contentViewInsets {
    return UIEdgeInsetsMake(20, 0, 0, 20);
}

//箭头高度，不要箭头时可设置为0
+ (CGFloat)arrowHeight {
    return 20;
}

-(void)setArrowOffset:(CGFloat)arrowOffset {
   // [super setArrowOffset:arrowOffset];
    
   // _arrowOffset = arrowOffset;
   // self.arrowOffset = arrowOffset;
}

- (CGFloat)arrowOffset {
   // return [super arrowOffset];
    return 0;
}

- (void)setArrowDirection:(UIPopoverArrowDirection)arrowDirection {
   // [super setArrowDirection:arrowDirection];
   // self.arrowDirection = arrowDirection;
}

- (UIPopoverArrowDirection)arrowDirection {
    return UIPopoverArrowDirectionLeft;
   // return self.arrowDirection;
}

+ (BOOL)wantsDefaultContentAppearance {
    return NO;
}

@end
