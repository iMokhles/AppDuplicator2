//
//  CAConstraintHelper.h
//  ContrAlert
//
//  Created by iMokhles on 22/04/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CAConstraintHelper : NSObject

+ (void)layoutBottomView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant;
+ (void)layoutTopView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant;
+ (void)layoutLeadingView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant;
+ (void)layoutTrailingView:(UIView *)miniView inView:(UIView *)superView withConstant:(int)constant;
+ (void)layoutView:(UIView *)miniView underView:(UIView *)miniView2 withConstant:(int)constant;
+ (void)layoutView:(UIView *)miniView aboveView:(UIView *)miniView2 withConstant:(int)constant;
+ (void)layoutView:(UIView *)miniView leftView:(UIView *)miniView2 withConstant:(int)constant;
+ (void)layoutView:(UIView *)miniView rightView:(UIView *)miniView2 withConstant:(int)constant;
+ (void)addHeightConstraintToView:(UIView *)miniView withHeight:(int)height;
+ (void)addWidthConstraintToView:(UIView *)miniView withWidth:(int)width;
+ (void)centerView:(UIView *)miniView inView:(UIView *)superView xConstant:(int)xConstant yConstant:(int)yConstant;
@end
