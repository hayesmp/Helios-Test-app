//
//  PrimaryViewController.m
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import "PrimaryViewController.h"

@interface PrimaryViewController ()

@end

@implementation PrimaryViewController
@synthesize scrollView, scrollingView, pageControl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView.frame = CGRectMake(0, 0, 320, self.view.frame.size.height);
    [self.scrollView setContentSize:CGSizeMake(960.0, self.view.frame.size.height)];
    NSLog(@"%.f, %.f",self.scrollView.contentSize.width, self.scrollView.contentSize.height);
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
//===================================================================================
//===================================================================================
#pragma mark - PageControl
/*
- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 3) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}
*/
- (IBAction)changePage {
    // update the scroll view to the appropriate page
    [self.scrollView setContentSize:CGSizeMake(960.0, self.view.frame.size.height)];
    CGRect frame;
    frame.origin.x = self.view.frame.size.width * self.pageControl.currentPage;
    frame.origin.y = 0;
    frame.size = self.scrollView.frame.size;
    NSLog(@"%.f, %.f, %.f, %.f", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
    NSLog(@"%.f, %.f",self.scrollView.contentSize.width, self.scrollView.contentSize.height);
    [self.scrollView scrollRectToVisible:frame animated:YES];
    pageControlBeingUsed = YES;
}

@end
