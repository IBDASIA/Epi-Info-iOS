//
//  EpiInfoUILabel.m
//  EpiInfo
//
//  Created by John Copeland on 6/12/14.
//

#import "EpiInfoUILabel.h"

@implementation EpiInfoUILabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setClipsToBounds:YES];
    }
    return self;
}

// Shrink font size if text is too wide for label size
// Can override this by setting font size AFTER setting text
- (void)setText:(NSString *)text
{
    float width = self.frame.size.width - 4;
    if (width <= 0.0)
    {
        [super setText:text];
        return;
    }
    NSString *fontName = [self.font fontName];
    float fontSize = [self.font pointSize];
    float textWidth = [text sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:fontSize]}].width;
    while (textWidth > width)
    {
        fontSize -= 0.1;
        textWidth = [text sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:fontSize]}].width;
    }
    [self setFont:[UIFont fontWithName:fontName size:fontSize]];
    
    [super setText:text];
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
