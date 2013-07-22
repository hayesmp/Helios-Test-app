//
//  LocationMarkerForm.h
//  rackspace-helios
//
//  Created by Michael Hayes on 7/19/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationMarkerForm : NSObject

-(void)recordMarker:(NSString*)name latitude:(NSString*)lat longitude:(NSString*)lon image:(UIImage*)img;

-(void)writeObject;


@end
