//
//  PinchViewController.m
//  iOS Gestures
//
//  Created by Kevin Cleathero on 2017-06-08.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    
    //x = mid point of self.view
    //width of the view of itself / 2
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *PinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    
    [view addGestureRecognizer:PinchGesture];
}

-(void)viewPinched:(UIPinchGestureRecognizer *) sender{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
    //between calls so values aren;t accumulated
    scale = 1.0;
}

@end
