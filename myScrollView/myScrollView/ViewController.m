//
//  ViewController.m
//  myScrollView
//
//  Created by Krzysztof Kopytek on 2016-05-17.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpScrollView];
}

- (void)viewDidAppear:(BOOL)animated {
    
    CGRect newBounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds));
    self.view.bounds = newBounds;
    
}

- (void)setUpScrollView {
    
    MyScrollView *scrollView = [[MyScrollView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    
    scrollView.backgroundColor = [UIColor grayColor];
    [scrollView setUpSubviews];
    
    [self.view addSubview:scrollView];
    
    
}

@end
