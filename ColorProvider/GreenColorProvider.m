//
//  GreenColorProvider.m
//  ColorProvider
//
//  Created by Chris Nielubowicz on 9/3/15.
//  Copyright © 2015 Mobiquity, Inc. All rights reserved.
//

#import "GreenColorProvider.h"

@implementation GreenColorProvider

- (UIColor *)color {
    return [UIColor greenColor];
}

- (void)provideColorToDestinationView:(UIView *)destinationView {
    [destinationView setBackgroundColor:self.color];
}

@end
