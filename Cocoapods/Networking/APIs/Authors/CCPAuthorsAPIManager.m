//
//  CCPAuthorsAPIManager.m
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CCPAuthorsAPIManager.h"

@implementation CCPAuthorsAPIManager

+ (void)retrieveAuthorsContainingSearchTerm:(NSString *)searchTerm
                                    success:(CCPNetworkingOnSuccess)success
                                    failure:(CCPNetworkingOnFailure)failure
{
    CNMRequest *request = [[CNMRequest alloc] init];
    
    //TODO scape space to %20author:
    NSString *stringURL = [NSString stringWithFormat:@"https://search.cocoapods.org/api/v1/pods.flat.hash.json?query=author:%@", searchTerm];
    
    request.URL = [NSURL URLWithString:stringURL];
    
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
