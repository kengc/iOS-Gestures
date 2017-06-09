//
//  SwipeViewController.m
//  iOS Gestures
//
//  Created by Kevin Cleathero on 2017-06-08.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic) BOOL open;

@end

@implementation SwipeViewController

//1) add brown wide rectangle anchor self
//set clips to bounds


-(void)viewDidLoad{
     [super viewDidLoad];


UIView *brownView = [[UIView alloc] initWithFrame:CGRectZero];
brownView.translatesAutoresizingMaskIntoConstraints = NO;
brownView.backgroundColor = [UIColor brownColor];
 
//have to use bounds instead of contraints becaus constraints will prevent swiping
//trying to create a brown bar that is centered
//and is 5 pixels from left and right

    //get brown rec containers height and  / 2
CGFloat halfheight = self.view.frame.size.height / 2;
CGFloat brownRectTopLeftY = halfheight - 20;
//CGFloat brownRectBottomLeftPosition = halfheight + 20;
    
CGFloat width = self.view.frame.size.width - 10;
    
 //5 is the buffer "leading edge" padding
brownView.frame = CGRectMake(5, brownRectTopLeftY, width, 40);
[self.view addSubview:brownView];
    

UIView *whiteView = [[UIView alloc] initWithFrame:CGRectZero];
whiteView.translatesAutoresizingMaskIntoConstraints = NO;
whiteView.backgroundColor = [UIColor whiteColor];

    //get brown rec containers height and  / 2
CGFloat selfHalfheight = self.view.frame.size.height / 2;
CGFloat whiteRectTopLeftY = selfHalfheight - 20;
    //CGFloat brownRectBottomLeftPosition = halfheight + 20;
    
CGFloat selfViewWidth = self.view.frame.size.width - 10;
    
    //5 is the buffer "leading edge" padding
whiteView.frame = CGRectMake(5, whiteRectTopLeftY, selfViewWidth, 40);
[self.view addSubview:whiteView];
    
    

//NSLayoutConstraint *rect1ViewHeightConstraint = [NSLayoutConstraint constraintWithItem:rect1View
//                                                                              attribute:NSLayoutAttributeHeight
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:nil
//                                                                              attribute:NSLayoutAttributeHeight
//                                                                             multiplier:1.0
//                                                                               constant:50.0];
//
//
////
//NSLayoutConstraint *rect1ViewYConstraint = [NSLayoutConstraint constraintWithItem:rect1View
//                                                                                attribute:NSLayoutAttributeCenterY
//                                                                                relatedBy:NSLayoutRelationEqual
//                                                                                   toItem:self.view
//                                                                                attribute:NSLayoutAttributeCenterY
//                                                                               multiplier:1.0
//                                                                                 constant:0.0];
//
//    
//NSLayoutConstraint *rect1ViewLeftConstraint = [NSLayoutConstraint constraintWithItem:rect1View
//                                                                            attribute:NSLayoutAttributeLeading
//                                                                            relatedBy:NSLayoutRelationEqual
//                                                                               toItem:self.view
//                                                                            attribute:NSLayoutAttributeLeading
//                                                                           multiplier:1.0
//                                                                             constant:10.0];
//
//NSLayoutConstraint *rect1ViewRightConstraint = [NSLayoutConstraint constraintWithItem:rect1View
//                                                                              attribute:NSLayoutAttributeTrailing
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:self.view
//                                                                              attribute:NSLayoutAttributeTrailing
//                                                                             multiplier:1.0
//                                                                               constant:-10.0];
//    
//
//    
//     rect1ViewYConstraint.active = YES;
//rect1ViewHeightConstraint.active = YES;
//  rect1ViewLeftConstraint.active = YES;
// rect1ViewRightConstraint.active = YES;

    
    
    //2) add white rectange and anchor to brown rect
    

    
    
    
    
    
    
    
    //3) add two gestures for white rect and both use the same selector method
//    UISwipeGestureRecognizer *PinchGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewTap:)];
    
//    [squareView addGestureRecognizer:PinchGesture];
    
    //4) check parameter for direction
    //switch statment on center.direction check for left/right direction
    //
    
}





@end
