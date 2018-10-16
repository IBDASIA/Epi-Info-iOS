//
//  UIPickerViewWithBlurryBackground.h
//  EpiInfo
//
//  Created by John Copeland on 6/9/14.
//  Copyright (c) 2014 John Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "BlurryView.h"

@interface UIPickerViewWithBlurryBackground : UIPickerView <UIGestureRecognizerDelegate>
{
    BlurryView *blurryBackground;
}
@end
