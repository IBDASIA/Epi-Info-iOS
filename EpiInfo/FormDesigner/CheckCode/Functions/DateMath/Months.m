//
//  Months.m
//  EpiInfo
//
//  Created by John Copeland on 5/2/19.
//

#import "Months.h"

@implementation Months

- (id)initWithFrame:(CGRect)frame AndCallingButton:(UIButton *)cb
{
    self = [super initWithFrame:frame AndCallingButton:cb];
    if (self)
    {
        [titleLabel setText:@"Assign Result of Months Function"];

        if (existingFunctions)
        {
            for (NSString *s in existingFunctionsArray)
            {
                if ([s containsString:@"MONTHS"])
                {
                    [existingFunctionsButton setTag:6647];
                    [self addSubview:existingFunctionsButton];
                    break;
                }
            }
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
