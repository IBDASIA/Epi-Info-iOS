//
//  ShinyButton.m
//  EpiInfo
//
//  Created by John Copeland on 8/30/13.
//  Copyright (c) 2013 John Copeland. All rights reserved.
//

#import "ShinyButton.h"

@implementation ShinyButton
{
    CAGradientLayer *gradientLayer;
    UIColor *unpressedBackgroundColor;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addTarget:self action:@selector(hideTheShadow) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(replaceTheShadow) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
//    [super setBackgroundColor:backgroundColor];
    unpressedBackgroundColor = [UIColor colorWithCGColor:[backgroundColor CGColor]];
    CGFloat bgHue, bgSaturation, bgBrightness, bgAlpha;
    [backgroundColor getHue:&bgHue saturation:&bgSaturation brightness:&bgBrightness alpha:&bgAlpha];
    UIColor *highColor = backgroundColor;
    UIColor *midColor = [UIColor colorWithHue:bgHue saturation:1.2 * bgSaturation brightness:1.5 * bgBrightness alpha:bgAlpha];
    UIColor *lowColor = [UIColor colorWithHue:bgHue saturation:0.8 * bgSaturation brightness:0.8 * bgBrightness alpha:bgAlpha];
    
    gradientLayer = [[CAGradientLayer alloc] init];
    [gradientLayer setBounds:[self bounds]];
    [gradientLayer setPosition:CGPointMake([self bounds].size.width / 2, [self bounds].size.height / 2)];
    [gradientLayer setCornerRadius:10.0];
    
    [[self layer] insertSublayer:gradientLayer atIndex:0];
    
    [[self layer] setCornerRadius:10.0];
//    [[self layer] setMasksToBounds:YES];
    [[self layer] setBorderWidth:1.0];
    [[self layer] setShadowOpacity:0.4];
    [[self layer] setShadowRadius:1.0];
    [[self layer] setShadowOffset:CGSizeMake(2.0, 2.0)];
    
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)[highColor CGColor], (id)[midColor CGColor], (id)[lowColor CGColor], nil]];
}

- (void)setFrame:(CGRect)frame
{
    [gradientLayer removeFromSuperlayer];
    [super setFrame:frame];
    [gradientLayer setBounds:frame];
    [gradientLayer setPosition:CGPointMake(frame.size.width / 2.0 - 40, frame.size.height / 2.0)];
    [[self layer] insertSublayer:gradientLayer atIndex:0];
}

-(void)hideTheShadow
{
    CGFloat bgHue, bgSaturation, bgBrightness, bgAlpha;
    [unpressedBackgroundColor getHue:&bgHue saturation:&bgSaturation brightness:&bgBrightness alpha:&bgAlpha];
    UIColor *highColor = unpressedBackgroundColor;
    UIColor *midColor = [UIColor colorWithHue:bgHue saturation:0.7 * bgSaturation brightness:0.7 * bgBrightness alpha:bgAlpha];
    
    [[self layer] setShadowOffset:CGSizeMake(0.0, 0.0)];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)[highColor CGColor], (id)[midColor CGColor], (id)[highColor CGColor], nil]];
}
-(void)replaceTheShadow
{
    CGFloat bgHue, bgSaturation, bgBrightness, bgAlpha;
    [unpressedBackgroundColor getHue:&bgHue saturation:&bgSaturation brightness:&bgBrightness alpha:&bgAlpha];
    UIColor *highColor = unpressedBackgroundColor;
    UIColor *midColor = [UIColor colorWithHue:bgHue saturation:1.2 * bgSaturation brightness:1.5 * bgBrightness alpha:bgAlpha];
    UIColor *lowColor = [UIColor colorWithHue:bgHue saturation:0.8 * bgSaturation brightness:0.8 * bgBrightness alpha:bgAlpha];
    
    [[self layer] setShadowOffset:CGSizeMake(1.5, 2.0)];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)[highColor CGColor], (id)[midColor CGColor], (id)[lowColor CGColor], nil]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
