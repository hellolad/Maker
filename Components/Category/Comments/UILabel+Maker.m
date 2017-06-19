//
//  UILabel+Maker.m
//  Components
//
//  Created by 赵恒 on 2017/6/16.
//  Copyright © 2017年 Zhao Heng. All rights reserved.
//

#import "UILabel+Maker.h"

@implementation UILabel (Maker)

- (UILabel *(^)(MK_STRING)) lab_text {
    return ^(MK_STRING text) {
        self.text = text;
        return self;
    };
}
- (UILabel *(^)(MK_COLOR)) lab_textColor {
    return ^(MK_COLOR color) {
        if ([color isKindOfClass:[UIColor class]]) {
            self.textColor = (UIColor *)color;
        } else {
            self.textColor = [MakerUntil colorWithHexString:color];
        }
        return self;
    };
}
- (UILabel *(^)(MK_FLOAT, MK_FLOAT, MK_STRING)) lab_font {
    return ^(MK_FLOAT size, MK_FLOAT weight, MK_STRING family) {
        self.font = [UIFont systemFontOfSize:size weight:weight];
        if (family) {
            self.font = [UIFont fontWithName:family size:size];
        }
        return self;
    };
}
- (UILabel *(^)(TextAlignmentOption)) lab_textAlignment {
    return ^(TextAlignmentOption align) {
        self.textAlignment = [MakerUntil textAlignment:align];
        return self;
    };
}
- (UILabel *(^)(LineBreakModeOption)) lab_lineBreakMode {
    return ^(LineBreakModeOption mode) {
        self.lineBreakMode = [MakerUntil lineBreakMode:mode];
        return self;
    };
}
- (UILabel *(^)(MK_INTEGER)) lab_numberOfSection {
    return ^(MK_INTEGER line) {
        self.numberOfLines = line;
        return self;
    };
}
- (UILabel *(^)(MK_BOOL))lab_enabled {
    return ^(MK_BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}


@end
