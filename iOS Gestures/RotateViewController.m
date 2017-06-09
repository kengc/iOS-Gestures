//
//  RotateViewController.m
//  iOS Gestures
//
//  Created by Kevin Cleathero on 2017-06-08.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@end

@implementation RotateViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    //1 add 100 x 100 square
    ////Square//////
    UIView *squareView = [[UIView alloc] initWithFrame:CGRectZero];
    squareView.translatesAutoresizingMaskIntoConstraints = NO;
    squareView.backgroundColor = [UIColor redColor];
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
    
    UIRotationGestureRecognizer *RotateGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(viewRotate:)];
    
    [squareView addGestureRecognizer:RotateGesture];
    
}

-(void)viewRotate:(UIRotationGestureRecognizer *)sender{
    
    //change CGAffin change rotation
    
    NSLog(@"In viewRotate");
    
    //sender.view.frame.origin.x
    
    //rotate based on start pinch and rotate end
    
    //CGFloat rotain = sender.rotation;
    
    //sender.rotation is how much you rotated your fingers since you first planted them on the screen
    
    CGAffineTransform transform = CGAffineTransformMakeRotation(sender.rotation);
    
    //sender.view.transform is everything we have transformed so far + new rotation
    NSLog(@"%@",  NSStringFromCGAffineTransform(sender.view.transform));
    //(sender.view.transform, M_PI/2.0
    sender.view.transform = transform;
    
    
    
    //sender.view.transform = transform;
    
    //CGFloat radians = (3.141593/180) * 90;
   //[UIView animateWithDuration:1.0 animations:^{
        //sender.view.transform = CGAffineTransformRotate(sender.view.transform, radians);
    //}];
    
    //sender.view.transform = CGAffineTransformRotate(sender.view.transform, 3.141593/2);
    
//    CGAffineTransform rotate = CGAffineTransformMakeRotation(90.0f * (3.1415 / 180.0f));
//    sender.view.transform = rotate;
//    
//    #define DEGREES_TO_RADIANS(x) (M_PI * (x) / 180.0)
//    ...
//    
//    CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(45));
    

    
}


@end
