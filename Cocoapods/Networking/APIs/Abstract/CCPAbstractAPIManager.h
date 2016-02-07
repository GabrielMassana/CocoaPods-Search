//
//  CCPAbstractAPIManager.h
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CCPNetworkingOnFailure)(NSError * error);
typedef void (^CCPNetworkingOnSuccess)(id result);

@interface CCPAbstractAPIManager : NSObject

@property (nonatomic, copy) CCPNetworkingOnFailure onFailure;
@property (nonatomic, copy) CCPNetworkingOnSuccess onSuccess;

@end
