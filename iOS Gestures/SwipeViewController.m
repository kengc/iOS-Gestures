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

@property (nonatomic) UIView *brownView;

@property (nonatomic) UIView *whiteView;

@end

@implementation SwipeViewController

//1) add brown wide rectangle anchor self
//set clips to bounds


-(void)viewDidLoad{
     [super viewDidLoad];


    self.brownView = [[UIView alloc] initWithFrame:CGRectZero];
    self.brownView.translatesAutoresizingMaskIntoConstraints = NO;
    self.brownView.backgroundColor = [UIColor brownColor];
    self.brownView.clipsToBounds = YES;
 
//have to use bounds instead of contraints becaus constraints will prevent swiping
//trying to create a brown bar that is centered
//and is 5 pixels from left and right

    //get brown rec containers height and  / 2
    CGFloat halfheight = self.view.frame.size.height / 2;
    CGFloat brownRectTopLeftY = halfheight - 20;
//CGFloat brownRectBottomLeftPosition = halfheight + 20;
    
    CGFloat width = self.view.frame.size.width - 10;
    
 //5 is the buffer "leading edge" padding
    self.brownView.frame = CGRectMake(5, brownRectTopLeftY, width, 40);
    [self.view addSubview:self.brownView];
    
    
////// White rectangle bounds method /////////
    
//2) add white rectange and anchor to brown rect

    self.whiteView = [[UIView alloc] initWithFrame:CGRectZero];
    self.whiteView.translatesAutoresizingMaskIntoConstraints = NO;
    self.whiteView.backgroundColor = [UIColor whiteColor];


    //get brown rec containers height and  / 2
    CGFloat selfHalfheight = self.brownView.frame.size.height;
    //CGFloat whiteRectTopLeftY = selfHalfheight - 20;
    //CGFloat brownRectBottomLeftPosition = halfheight + 20;
    
    CGFloat selfViewWidth = self.brownView.frame.size.width;
    
    //5 is the buffer "leading edge" padding
    self.whiteView.frame = CGRectMake(0, 0, selfViewWidth, selfHalfheight);
    [self.brownView addSubview:self.whiteView];
    
    
    
    
    //3) add two gestures for white rect and both use the same selector method
    //Swip gesture #1
    UISwipeGestureRecognizer *swipe1Gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwipe:)];
    swipe1Gesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.whiteView addGestureRecognizer:swipe1Gesture];
    
    
   //Swip gesture #2
    UISwipeGestureRecognizer *swipe2Gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwipe:)];
     swipe2Gesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.whiteView addGestureRecognizer:swipe2Gesture];
    

    
}

-(void)viewSwipe:(UISwipeGestureRecognizer *)sender{
    
    //4) check parameter for direction
    //switch statment on center.direction check for left/right direction
       NSLog(@"pre switch");
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionRight:{
            //determine how far i have moved
            CGPoint brownRelativeRight = [sender locationInView:self.brownView];
            NSLog(@"RIght swipe %@",  NSStringFromCGPoint(brownRelativeRight));
            
            CGFloat currentValue = self.whiteView.frame.origin.x;
            
            CGRect newFramePosition = CGRectMake(currentValue + 60, self.whiteView.frame.origin.y, self.whiteView.frame.size.width, self.whiteView.frame.size.height);
            
            self.whiteView.frame = newFramePosition;
            
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:{
            CGPoint brownRelativeLeft = [sender locationInView:self.brownView];
            NSLog(@"Left swipe %@",  NSStringFromCGPoint(brownRelativeLeft));
            
            //current  value of white box and subtract 30
            CGFloat currentValue = self.whiteView.frame.origin.x;
            
            CGRect newFramePosition = CGRectMake(currentValue - 60, self.whiteView.frame.origin.y, self.whiteView.frame.size.width, self.whiteView.frame.size.height);
            
            self.whiteView.frame = newFramePosition;
            
        }
            break;
            
        default:
            break;
    }
}




@end
