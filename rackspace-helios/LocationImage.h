//
//  LocationImage.h
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LocationMarker;

@interface LocationImage : NSManagedObject

@property (nonatomic, retain) NSString * filename;
@property (nonatomic, retain) NSString * container;
@property (nonatomic, retain) LocationMarker *image;

@end
