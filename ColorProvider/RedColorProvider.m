//
//  RedColorProvider.m
//  ColorProvider
//
//  Created by Chris Nielubowicz on 9/3/15.
//  Copyright © 2015 Mobiquity, Inc. All rights reserved.
//

#import "RedColorProvider.h"

@implementation RedColorProvider

- (UIColor *)color {
    return [UIColor redColor];
}

- (void)provideColorToDestinationView:(UIView *)destinationView {
    destinationView.layer.borderColor = self.color.CGColor;
    destinationView.layer.borderWidth = 1.f;
}

@end
