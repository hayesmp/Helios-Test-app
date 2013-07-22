//
//  PrimaryViewController.h
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrimaryViewController : UIViewController {
    UIScrollView* scrollView;
    UIView* scrollingView;
    UIPageControl* pageControl;
    BOOL pageControlBeingUsed;
}
@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, strong) IBOutlet UIView* scrollingView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;

@end
