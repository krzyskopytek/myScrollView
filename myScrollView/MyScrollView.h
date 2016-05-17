//
//  MyScrollView.h
//  myScrollView
//
//  Created by Krzysztof Kopytek on 2016-05-17.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property CGSize contentSize;
@property CGPoint startPoint;


- (void)setUpSubviews;

@end
