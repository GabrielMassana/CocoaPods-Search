//
//  CCPAuthorsAPIManager.h
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CoreNetworking/CoreNetworking.h>

#import "CCPAbstractAPIManager.h"

@interface CCPAuthorsAPIManager : CCPAbstractAPIManager

+ (void)retrieveAuthorsContainingSearchTerm:(NSString *)searchTerm
                            networkingError:(CCPNetworkingError)networkingError;

@end
