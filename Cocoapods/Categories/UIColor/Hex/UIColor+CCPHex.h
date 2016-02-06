//
//  UIColor+CCPHex.h
//  Cocoapods
//
//  Created by William Boles on 02/06/2014.
//  Copyright © 2016 William Boles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CCPHex)

/**
 Creates UIColor object based on given hexadecimal color value (rrggbb).
 
 @param hex String with the hex information.
 @return A UIColor from the given String.
 */
+ (UIColor *)ccp_colorWithHex:(NSString *)hex;

/**
 Creates NSString based on given UIColor.
 
 @return A NSString with the hex information from the UIColor.
 */
- (NSString *)ccp_toHex;

@end
