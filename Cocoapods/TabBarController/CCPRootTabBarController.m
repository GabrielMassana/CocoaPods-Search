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

@property (nonatomic, strong) CCPAuthorViewController *authorViewController;
@property (nonatomic, strong) CCPPodsViewController *podsViewController;
@property (nonatomic, strong) CCPSettingsViewController *settingsViewController;

@end

@implementation CCPRootTabBarController

#pragma mark - Init

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.viewControllers = @[self.podsViewController, self.authorViewController , self.settingsViewController];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor ccp_F2161D]}
                                               forState:UIControlStateNormal];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor ccp_380200]}
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
        self.tabBar.items[0].title = NSLocalizedString(@"Pods", nil);
    }
    
    return _podsViewController;
}

- (CCPAuthorViewController *)authorViewController
{
    if (!_authorViewController)
    {
        _authorViewController = [[CCPAuthorViewController alloc] init];
        self.tabBar.items[0].title = NSLocalizedString(@"Author", nil);
    }
    
    return _authorViewController;
}

- (CCPSettingsViewController *)settingsViewController
{
    if (!_settingsViewController)
    {
        _settingsViewController = [[CCPSettingsViewController alloc] init];
        self.tabBar.items[0].title = NSLocalizedString(@"Settings", nil);
    }
    
    return _settingsViewController;
}

@end
