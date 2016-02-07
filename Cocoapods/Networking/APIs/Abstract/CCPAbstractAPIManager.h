//
//  CCPAbstractAPIManager.h
//  Cocoapods
//
//  Created by Gabriel Massana on 7/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CCPNetworkingError)(NSError * error);

@interface CCPAbstractAPIManager : NSObject

@property (nonatomic, copy) CCPNetworkingError error;

@end
