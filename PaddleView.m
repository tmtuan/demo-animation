//
//  PaddleView.m
//  demo-animation
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "PaddleView.h"

@implementation PaddleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect square = CGRectMake(0.0f, 0.0f, 10.0f, 60.0f);
    [[UIColor redColor] set];
    UIRectFill(square);
}


@end
