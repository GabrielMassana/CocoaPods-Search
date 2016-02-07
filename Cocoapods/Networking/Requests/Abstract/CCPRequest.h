//
//  CCPRequest.h
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import <CoreNetworking/CoreNetworking.h>

@interface CCPRequest : CNMRequest

+ (instancetype)requestForAPI;

- (void)updateRequestWithEndpoint:(NSString *)endpoint;

@end
