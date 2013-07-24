//
//  PrimaryViewController.m
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import "MapVC.h"

@interface MapVC ()

@end

@implementation MapVC
@synthesize mapView;

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
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
