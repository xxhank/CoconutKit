//
//  UIColor+HLSExtensions.m
//  nut
//
//  Created by Samuel Défago on 14.06.11.
//  Copyright 2011 Hortis. All rights reserved.
//

#import "UIColor+HLSExtensions.h"

@implementation UIColor (HLSExtensions)

- (UIColor *)invertColor
{
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    UIColor *invertColor = [[[UIColor alloc] initWithRed:1.f - components[0]
                                                   green:1.f - components[1]
                                                    blue:1.f - components[2]
                                                   alpha:components[3]] autorelease];
    
    return invertColor;
}

@end
