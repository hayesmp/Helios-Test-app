//
//  LocationMarker.h
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LocationData, LocationImage;

@interface LocationMarker : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) LocationData *location;
@property (nonatomic, retain) LocationImage *image;

@end
