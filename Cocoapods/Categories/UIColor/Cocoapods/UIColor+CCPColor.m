//
//  UIColor+CCPColor.m
//  Cocoapods
//
//  Created by Gabriel Massana on 5/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//
// Naming: http://chir.ag/projects/name-that-color/
//

#import "UIColor+CCPColor.h"

#import "UIColor+CCPHex.h"

@implementation UIColor (CCPColor)

+ (UIColor *)ccp_redRibbon
{
    return [UIColor ccp_colorWithHex:@"F2161D"];
}

+ (UIColor *)ccp_temptress
{
    return [UIColor ccp_colorWithHex:@"380200"];
}

@end
