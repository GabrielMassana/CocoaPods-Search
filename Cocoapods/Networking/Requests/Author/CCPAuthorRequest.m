//
//  CCPAuthorRequest.m
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPAuthorRequest.h"

@implementation CCPAuthorRequest

#pragma mark - AuthorRequest

+ (instancetype)requestToSearchAuthorWithSearchTerm:(NSString *)searchTerm
{
    CCPAuthorRequest *request = [self requestForAPI];

    NSMutableString *authorQuery = [[NSMutableString alloc] init];
    
    NSArray *terms = [searchTerm componentsSeparatedByString:@" "];
    
    for (NSInteger index = 0; index < terms.count; index++)
    {
        NSString *term = nil;
        
        if (index == 0)
        {
            term = [NSString stringWithFormat:@"author:%@", terms[index]];
        }
        else
        {
            term = [NSString stringWithFormat:@" author:%@", terms[index]];
        }
        
        [authorQuery appendString:term];
    }
    
    [request updateRequestWithEndpoint:authorQuery];
    
    return request;
}

@end
