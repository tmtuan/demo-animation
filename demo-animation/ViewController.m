//
//  ViewController.m
//  demo-animation
//
//  Created by ThaoLT on 3/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize paddleView = _paddleView;


- (id)init
{
    if (self = [super init])
    {
        // add paddle
        self.paddleView = [[PaddleView alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 10.0f, 60.0f)];
        [self.paddleView setBackgroundColor:[UIColor redColor]];
        [self.view addSubview:self.paddleView];
    }
    
    return self;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // add paddle
    
    [self init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // follow user's finger vertically with paddle
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:self.view];
    self.paddleView.center = CGPointMake(self.paddleView.center.x, location.y);
}

@end
