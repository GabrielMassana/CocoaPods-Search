//
//  UIColor+CCPHex.m
//  Cocoapods
//
//  Created by William Boles on 02/06/2014.
//  Copyright © 2016 William Boles. All rights reserved.
//

#import "UIColor+CCPHex.h"

@implementation UIColor (CCPHex)

#pragma mark - NSStringWithHexToColor

+ (UIColor *)ccp_colorWithHex:(NSString *)hex
{
    NSString *noHashString = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""]; // remove the #
    NSScanner *scanner = [NSScanner scannerWithString:noHashString];
    [scanner setCharactersToBeSkipped:[NSCharacterSet symbolCharacterSet]]; // remove + and $
    
    unsigned convertHex;
    if (![scanner scanHexInt:&convertHex]) return nil;
    NSInteger red = (convertHex >> 16) & 0xFF;
    NSInteger green = (convertHex >> 8) & 0xFF;
    NSInteger blue = (convertHex) & 0xFF;
    
    return [UIColor colorWithRed:red/255.0f
                           green:green/255.0f
                            blue:blue/255.0f
                           alpha:1.0f];
}

#pragma mark - ColorToHexString

- (NSString *)ccp_toHex
{
    NSString *color = nil;
    
    // This method only works for RGB colors
    if (CGColorGetNumberOfComponents(self.CGColor) == 4)
    {
        // Get the red, green and blue components
        const CGFloat *components = CGColorGetComponents(self.CGColor);
        
        // These components range from 0.0 till 1.0 and need to be converted to 0 till 255
        CGFloat red;
        CGFloat green;
        CGFloat blue;
        
        red = roundf(components[0] * 255.0);
        green = roundf(components[1] * 255.0);
        blue = roundf(components[2] * 255.0);
        
        // Convert with %02x (use 02 to always get two chars)
        color = [[NSString alloc]initWithFormat:@"#%02x%02x%02x", (int)red, (int)green, (int)blue];
    }
    
    return color;
}

@end
