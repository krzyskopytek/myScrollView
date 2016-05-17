//
//  MyScrollView.m
//  myScrollView
//
//  Created by Krzysztof Kopytek on 2016-05-17.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView



- (void)setUpSubviews {
    
    
    
//    A red UIView at (20,20) x, y coordinates and with width 100 and height 100
//    A green UIView at (150,150) x, y coordinates and with width 150 and height 200
//    A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
//    A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self addSubview:redView];
    [self addSubview:greenView];
    [self addSubview:blueView];
    [self addSubview:yellowView];
    
    self.contentSize = CGSizeMake(800, 1000);
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(letsMove:)];
    
    [self addGestureRecognizer:pan];
    
    
    
}


// ====================================================================================================
- (void)letsMove:(UIPanGestureRecognizer *)pan {
    
    CGRect newBounds = self.bounds;
    
    if (pan.state == UIGestureRecognizerStateBegan) {
        self.startPoint = self.bounds.origin;
    }
    
    CGPoint newPoint = [pan translationInView:self];
    
    newBounds.origin.x = self.startPoint.x - newPoint.x;
    newBounds.origin.y = self.startPoint.y - newPoint.y;
    
    
    if (newBounds.origin.x < self.frame.origin.x) {
        newBounds.origin.x = self.frame.origin.x;
    }
    if (newBounds.origin.x + self.frame.size.width > self.contentSize.width) {
        newBounds.origin.x = self.contentSize.width - self.frame.size.width;
        
    }
    if (newBounds.origin.y < self.frame.origin.y) {
        newBounds.origin.y = self.frame.origin.y;
        
    }
    if (newBounds.origin.y + self.frame.size.height > self.contentSize.height) {
        newBounds.origin.y = self.contentSize.height - self.frame.size.height;
    }
    
    self.bounds = newBounds;
    

    
}


@end
