//
//  rackspace_helios_test.m
//  rackspace-helios-test
//
//  Created by Michael Hayes on 7/22/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//
// #define EXP_OLD_SYNTAX // enable backward-compatibility
#define EXP_SHORTHAND
#import <SenTestingKit/SenTestingKit.h>
#import "Specta.h"
#import "Expecta.h"
#import "MapVC.h"


SpecBegin(MapVC)

describe(@"Map View Controller", ^{
    MapVC* mapVC = MapVC.new;
    beforeEach(^{
        
    });
    it(@"Has a map", ^{
        expect(mapVC.mapView).toNot.beNil();
    });
});

SpecEnd
