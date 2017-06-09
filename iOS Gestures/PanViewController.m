//
//  PanViewController.m
//  iOS Gestures
//
//  Created by Kevin Cleathero on 2017-06-08.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
//1)simple tap and drag  /////////////////////
//    CGPoint locationInView = [sender locationInView:self.view];
//    //red square view
//    sender.view.center = locationInView;
//1)simple tap and drag //////////////////////
    
    
//2) using translationinView to achieve it
    //this  tracks the amount of distance youve
    //travellend from the moment the gesture was first
    //deteceted. pan first detected
    CGPoint translationInView = [sender translationInView:self.view];
    
    //add traslationinview to the center of teh red square
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
//2) using translationinView to achieve it
}


@end
