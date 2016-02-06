//
//  CCPRootTabBarController.m
//  Cocoapods
//
//  Created by Gabriel Massana on 5/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPRootTabBarController.h"

#import "CCPAuthorViewController.h"
#import "CCPPodsViewController.h"
#import "CCPSettingsViewController.h"
#import "UIColor+CCPColor.h"

@interface CCPRootTabBarController ()

@property (nonatomic, strong) CCPAuthorViewController *authorsViewController;
@property (nonatomic, strong) CCPPodsViewController *podsViewController;
@property (nonatomic, strong) CCPSettingsViewController *settingsViewController;

@property (nonatomic, strong) UINavigationController *authorsNavigationController;
@property (nonatomic, strong) UINavigationController *podsNavigationController;
@property (nonatomic, strong) UINavigationController *settingsNavigationController;

@end

@implementation CCPRootTabBarController

#pragma mark - Init

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.viewControllers = @[self.podsNavigationController, self.authorsNavigationController , self.settingsNavigationController];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor ccp_redRibbon]}
                                               forState:UIControlStateNormal];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor ccp_temptress]}
                                               forState:UIControlStateSelected];
    }
    
    return self;
}

#pragma mark - ViewControllers

- (CCPPodsViewController *)podsViewController
{
    if (!_podsViewController)
    {
        _podsViewController = [[CCPPodsViewController alloc] init];
        _podsViewController.title = NSLocalizedString(@"Pods", nil);
    }
    
    return _podsViewController;
}

- (CCPAuthorViewController *)authorsViewController
{
    if (!_authorsViewController)
    {
        _authorsViewController = [[CCPAuthorViewController alloc] init];
        _authorsViewController.title = NSLocalizedString(@"Authors", nil);
    }
    
    return _authorsViewController;
}

- (CCPSettingsViewController *)settingsViewController
{
    if (!_settingsViewController)
    {
        _settingsViewController = [[CCPSettingsViewController alloc] init];
        _settingsViewController.title = NSLocalizedString(@"Settings", nil);
    }
    
    return _settingsViewController;
}

#pragma mark - NavigationController

- (UINavigationController *)podsNavigationController
{
    if (!_podsNavigationController)
    {
        _podsNavigationController = [[UINavigationController alloc] initWithRootViewController:self.podsViewController];
        _podsNavigationController.tabBarItem.image = [UIImage imageNamed:@"icon-tabbar-pods"];
    }
    
    return _podsNavigationController;
}

- (UINavigationController *)authorsNavigationController
{
    if (!_authorsNavigationController)
    {
        _authorsNavigationController = [[UINavigationController alloc] initWithRootViewController:self.authorsViewController];
        _authorsNavigationController.tabBarItem.image = [UIImage imageNamed:@"icon-tabbar-authors"];
    }
    
    return _authorsNavigationController;
}

- (UINavigationController *)settingsNavigationController
{
    if (!_settingsNavigationController)
    {
        _settingsNavigationController = [[UINavigationController alloc] initWithRootViewController:self.settingsViewController];
        _settingsNavigationController.tabBarItem.image = [UIImage imageNamed:@"icon-tabbar-settings"];
    }
    
    return _settingsNavigationController;
}

@end
