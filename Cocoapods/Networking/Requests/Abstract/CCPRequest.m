//
//  CCPRequest.m
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPRequest.h"

@implementation CCPRequest

+ (instancetype)requestForAPI
{
    CCPRequest *request = [self request];
    
    return request;
}

- (void)updateRequestWithEndpoint:(NSString *)endpoint
{
    // TODO: Issue 10
    NSString *APIPath = @"https://search.cocoapods.org/api/v1/pods.flat.hash.json?query=";

    NSString *APIString = [NSString stringWithFormat:@"%@%@", APIPath, endpoint];
    
    self.URL = [NSURL URLWithString:[APIString stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLQueryAllowedCharacterSet]];
}

@end
