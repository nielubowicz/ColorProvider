//
//  ColorProvider.h
//  ColorProvider
//
//  Created by Chris Nielubowicz on 9/3/15.
//  Copyright © 2015 Mobiquity, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorProvider : NSObject


@property (weak, nonatomic) IBOutlet UIViewController *owner;
@property (strong, nonatomic) IBOutlet UIView *destinationV;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *destinationViews;

/** The color provided by this class. Color will be used to perform an action on all @c destinationViews.
 *  @discussion
 *      The default color is @c [UIColor clearColor]
 */
@property (strong, nonatomic) UIColor *color;

/** Override point for subclasses to apply their @c color to the given destination view
 *  @param destinationView the view upon which to provide color
 *  @discussion
 *      The default implementation of this method does nothing.
 */
- (void)provideColorToDestinationView:(UIView *)destinationView;

@end
