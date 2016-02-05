//
//  AppDelegate.m
//  Cocoapods
//
//  Created by Gabriel Massana on 5/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPAppDelegate.h"

#import "CCPRootTabBarController.h"

@interface CCPAppDelegate ()

@property (nonatomic, strong) CCPRootTabBarController *rootTabBarController;

@end

@implementation CCPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.backgroundColor = [UIColor clearColor];
    self.window.clipsToBounds = NO;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

#pragma mark - Window

- (UIWindow *)window
{
    if (!_window)
    {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _window.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
        _window.rootViewController = self.rootTabBarController;
    }
    
    return _window;
}

#pragma mark - RootTabBarController

- (CCPRootTabBarController *)rootTabBarController
{
    if (!_rootTabBarController)
    {
        _rootTabBarController = [[CCPRootTabBarController alloc] init];
        
        _rootTabBarController.tabBar.items[0].title = NSLocalizedString(@"Pods", nil);
        _rootTabBarController.tabBar.items[1].title = NSLocalizedString(@"Author", nil);
        _rootTabBarController.tabBar.items[2].title = NSLocalizedString(@"Settings", nil);
    }
    
    return _rootTabBarController;
}

@end
