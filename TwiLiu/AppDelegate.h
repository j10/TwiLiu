//
//  AppDelegate.h
//  TwiLiu
//
//  Created by Justin Liu on 6/27/13.
//  Copyright (c) 2013 Justin Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TwiLiuIncrementalStore.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
