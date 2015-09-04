//
//  ColorProvider.m
//  ColorProvider
//
//  Created by Chris Nielubowicz on 9/3/15.
//  Copyright © 2015 Mobiquity, Inc. All rights reserved.
//

#import "ColorProvider.h"

@implementation ColorProvider

- (void)awakeFromNib {
    self.owner.view;
    for (UIView *destinationView in self.destinationViews) {
        [self provideColorToDestinationView:destinationView];
    }
}

- (UIColor *)color {
    // default implementation returns clear color
    return [UIColor clearColor];
}

- (void)provideColorToDestinationView:(UIView *)destinationView {
    // default implementation does nothing
}

@end
