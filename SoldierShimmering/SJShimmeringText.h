//
//  SJShimmeringText.h
//  SoldierShimmering
//
//  Created by Soldier on 15/4/22.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "FBShimmeringView.h"
#import <UIKit/UIKit.h>

@interface SJShimmeringText : FBShimmeringView

@property(nonatomic, strong) UILabel *textLabel;

- (instancetype)initWithFrame:(CGRect)frame
                         text:(NSString *)text
                         font:(UIFont *)font
                    textColor:(UIColor *)textColor
                textAlignment:(NSTextAlignment)textAlignment;

@end
