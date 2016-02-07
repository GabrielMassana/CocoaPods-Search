//
//  CCPAuthorRequest.h
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPRequest.h"

@interface CCPAuthorRequest : CCPRequest

+ (instancetype)requestToSearchAuthorWithSearchTerm:(NSString *)searchTerm;

@end
