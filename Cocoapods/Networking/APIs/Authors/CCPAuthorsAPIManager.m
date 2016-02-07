//
//  CCPAuthorsAPIManager.m
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPAuthorsAPIManager.h"

#import "CCPAuthorRequest.h"

@implementation CCPAuthorsAPIManager

+ (void)retrieveAuthorsContainingSearchTerm:(NSString *)searchTerm
                                    success:(CCPNetworkingOnSuccess)success
                                    failure:(CCPNetworkingOnFailure)failure
{
    CCPAuthorRequest *request = [CCPAuthorRequest requestToSearchAuthorWithSearchTerm:searchTerm];
    
    CNMURLSessionDataTask *task = [[CNMSession defaultSession] dataTaskFromRequest:request];

    task.onCompletion = ^void(NSData *data, NSURLResponse *response, NSError *error)
    {
        if (error)
        {
            NSLog(@"error = %@", error);

            if (failure)
            {
                failure(error);
            }
        }
        else
        {
            // Raw data to JSON.
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                                 options: NSJSONReadingMutableContainers
                                                                   error: nil];
            
            //Parse json
            NSLog(@"json = %@", json);
            
            if (success)
            {
                success(nil);
            }
        }
    };
    
    [task resume];
}

@end
