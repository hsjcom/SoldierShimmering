//
//  SJShimmeringText.m
//  SoldierShimmering
//
//  Created by Soldier on 15/4/22.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "SJShimmeringText.h"

@implementation SJShimmeringText

- (instancetype)initWithFrame:(CGRect)frame
                         text:(NSString *)text
                         font:(UIFont *)font
                    textColor:(UIColor *)textColor
                textAlignment:(NSTextAlignment)textAlignment {
    self = [super initWithFrame:frame];
    if (self) {
        self.shimmering = YES;
        self.shimmeringBeginFadeDuration = 0.3;
        self.shimmeringOpacity = 0.3;
        self.shimmeringSpeed = 230;
        
        _textLabel = [[UILabel alloc] initWithFrame:frame];
        _textLabel.text = text;
        _textLabel.font = font;
        _textLabel.textColor = textColor;
        _textLabel.textAlignment = textAlignment;
        [_textLabel sizeToFit];
        _textLabel.frame = CGRectMake(0, 0, _textLabel.frame.size.width, _textLabel.frame.size.height);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, _textLabel.frame.size.width, _textLabel.frame.size.height);
        self.contentView = _textLabel;
    }
    return self;
}

@end
