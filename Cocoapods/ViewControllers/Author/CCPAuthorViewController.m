//
//  CCPAuthorViewController.m
//  Cocoapods
//
//  Created by Gabriel Massana on 5/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPAuthorViewController.h"

#import "CCPAuthorsAPIManager.h"

@implementation CCPAuthorViewController

#pragma mark - ViewLifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [CCPAuthorsAPIManager retrieveAuthorsContainingSearchTerm:@"William Boles"
                                                      success:^(id result)
    {
        NSLog(@"error = %@", result);
    }
                                                      failure:^(NSError *error)
    {
        NSLog(@"error = %@", error);
    }];
}

@end
