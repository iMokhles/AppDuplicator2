//
//  CAConstraintHelper.m
//  ContrAlert
//
//  Created by iMokhles on 22/04/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

#import "CAConstraintHelper.h"

@implementation CAConstraintHelper

+ (void)layoutBottomView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant {
    
    NSLayoutConstraint *bottomLayout = [NSLayoutConstraint constraintWithItem:superView
                                                                                   attribute:NSLayoutAttributeBottom
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:miniView
                                                                                   attribute:NSLayoutAttributeBottom
                                                                                  multiplier:1
                                                                                    constant:constant];
    [miniView.superview addConstraint:bottomLayout];
}
+ (void)layoutTopView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant {
    
    NSLayoutConstraint *topLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                    attribute:NSLayoutAttributeTop
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:superView
                                                                    attribute:NSLayoutAttributeTop
                                                                   multiplier:1
                                                                     constant:constant];
    [miniView.superview addConstraint:topLayout];
}
+ (void)layoutLeadingView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant {
    
    NSLayoutConstraint *topLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                 attribute:NSLayoutAttributeLeading
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:superView
                                                                 attribute:NSLayoutAttributeLeading
                                                                multiplier:1
                                                                  constant:constant];
    [miniView.superview addConstraint:topLayout];
}
+ (void)layoutTrailingView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant {
    
    NSLayoutConstraint *topLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                 attribute:NSLayoutAttributeTrailing
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:superView
                                                                 attribute:NSLayoutAttributeTrailing
                                                                multiplier:1
                                                                  constant:constant];
    [miniView.superview addConstraint:topLayout];
}
+ (void)addHeightConstraintToView:(UIView *)miniView withHeight:(int)height {
    
    NSLayoutConstraint *heightLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:height];
    [miniView addConstraint:heightLayout];
}
+ (void)addWidthConstraintToView:(UIView *)miniView withWidth:(int)width {
    
    NSLayoutConstraint *widthLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                    attribute:NSLayoutAttributeWidth
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1
                                                                     constant:width];
    [miniView addConstraint:widthLayout];
}
+ (void)centerView:(UIView *)miniView inView:(UIView *)superView xConstant:(int)xConstant yConstant:(int)yConstant {
    NSLayoutConstraint *xCenterConstraint = [NSLayoutConstraint constraintWithItem:superView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:miniView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:xConstant];
    [superView addConstraint:xCenterConstraint];
    
    NSLayoutConstraint *yCenterConstraint = [NSLayoutConstraint constraintWithItem:superView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:miniView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:yConstant];
    [superView addConstraint:yCenterConstraint];
}

+ (void)layoutView:(UIView *)miniView underView:(UIView *)miniView2 withConstant:(int)constant {
    
    NSLayoutConstraint *underLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                    attribute:NSLayoutAttributeTop
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:miniView2
                                                                    attribute:NSLayoutAttributeBottom
                                                                   multiplier:1
                                                                     constant:constant];
    [miniView.superview addConstraint:underLayout];
}
+ (void)layoutView:(UIView *)miniView aboveView:(UIView *)miniView2 withConstant:(int)constant {
    
    NSLayoutConstraint *aboveLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                    attribute:NSLayoutAttributeBottom
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:miniView2
                                                                    attribute:NSLayoutAttributeTop
                                                                   multiplier:1
                                                                     constant:constant];
    [miniView.superview addConstraint:aboveLayout];
}
+ (void)layoutView:(UIView *)miniView leftView:(UIView *)miniView2 withConstant:(int)constant {
    
    NSLayoutConstraint *leftLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                 attribute:NSLayoutAttributeTrailing
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:miniView2
                                                                 attribute:NSLayoutAttributeLeading
                                                                multiplier:1
                                                                  constant:constant];
    [miniView.superview addConstraint:leftLayout];
}
+ (void)layoutView:(UIView *)miniView rightView:(UIView *)miniView2 withConstant:(int)constant {
    
    NSLayoutConstraint *rightLayout = [NSLayoutConstraint constraintWithItem:miniView
                                                                 attribute:NSLayoutAttributeLeading
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:miniView2
                                                                 attribute:NSLayoutAttributeTrailing
                                                                multiplier:1
                                                                  constant:constant];
    [miniView.superview addConstraint:rightLayout];
}
@end
