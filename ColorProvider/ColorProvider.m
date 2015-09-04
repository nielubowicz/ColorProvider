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
    [self.owner addObserver:self forKeyPath:@"view" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    for (UIView *destinationView in self.destinationViews) {
        [self provideColorToDestinationView:destinationView];
    }
    [self.owner removeObserver:self forKeyPath:@"view"];
}

- (UIColor *)color {
    // default implementation returns clear color
    return [UIColor clearColor];
}

- (void)provideColorToDestinationView:(UIView *)destinationView {
    // default implementation does nothing
}

@end
