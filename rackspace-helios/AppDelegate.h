//
//  AppDelegate.h
//  rackspace-helios
//
//  Created by Michael Hayes on 7/18/13.
//  Copyright (c) 2013 rackerlabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationData.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
