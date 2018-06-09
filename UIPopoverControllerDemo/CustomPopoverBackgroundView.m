//
//  CustomPopoverBackgroundView.m
//  UIPopoverControllerDemo
//
//  Created by mac on 2018/6/9.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "CustomPopoverBackgroundView.h"

@implementation CustomPopoverBackgroundView

/* Represents the the length of the base of the arrow's triangle in points.
 */

+ (CGFloat)arrowBase {
    return 0;
}

/* Describes the distance between each edge of the background view and the corresponding edge of its content view (i.e. if it were strictly a rectangle).
 */
+ (UIEdgeInsets)contentViewInsets {
    return UIEdgeInsetsMake(20, 0, 0, 20);
}

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
