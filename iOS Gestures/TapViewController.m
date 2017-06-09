//
//  TapViewController.m
//  iOS Gestures
//
//  Created by Kevin Cleathero on 2017-06-08.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

-(void)viewDidLoad{
    [super viewDidLoad];

    //1 add 100 x 100 square
    ////Square//////
    UIView *squareView = [[UIView alloc] initWithFrame:CGRectZero];
    squareView.translatesAutoresizingMaskIntoConstraints = NO;
    squareView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:squareView];
    
    
    NSLayoutConstraint *squareViewHeightConstraint = [NSLayoutConstraint constraintWithItem:squareView
                                                                                   attribute:NSLayoutAttributeHeight
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:nil
                                                                                   attribute:NSLayoutAttributeHeight
                                                                                  multiplier:1.0
                                                                                    constant:100.0];
    
    NSLayoutConstraint *squareViewWidthConstraint = [NSLayoutConstraint constraintWithItem:squareView
                                                                                  attribute:NSLayoutAttributeWidth
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:nil
                                                                                  attribute:NSLayoutAttributeWidth
                                                                                 multiplier:1.0
                                                                                   constant:100.0];
    
    
    NSLayoutConstraint *squareViewLeftConstraint = [NSLayoutConstraint constraintWithItem:squareView
                                                                                 attribute:NSLayoutAttributeCenterX
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.view
                                                                                 attribute:NSLayoutAttributeCenterX
                                                                                multiplier:1.0
                                                                                  constant:0.0];
    
    NSLayoutConstraint *squareViewBottomConstraint = [NSLayoutConstraint constraintWithItem:squareView
                                                                                   attribute:NSLayoutAttributeCenterY
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.view
                                                                                   attribute:NSLayoutAttributeCenterY
                                                                                  multiplier:1.0
                                                                                    constant:0.0];
    
    squareViewHeightConstraint.active = YES;
    squareViewWidthConstraint.active = YES;
    squareViewLeftConstraint.active = YES;
    squareViewBottomConstraint.active = YES;

    
    //2) add tap gesture
    
    UITapGestureRecognizer *PinchGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTap:)];
    
    [squareView addGestureRecognizer:PinchGesture];
    
}

-(void)viewTap:(UITapGestureRecognizer *)sender{
    
    UIColor *color = [sender.view.backgroundColor isEqual: [UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];

    sender.view.backgroundColor = color;
    
    // ternary expression is logically the same as this
//    UIColor *color;
//    if ([someColor isEqual: otherColor]) {
//        color = [UIColor orangeColor];
//    } else {
//        color = [UIColor purpleColor];
//    }
    
}



@end
