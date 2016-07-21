//
//  EpiInfoOptionField.m
//  EpiInfo
//
//  Created by John Copeland on 6/2/14.
//

#import "EpiInfoOptionField.h"
#import "EnterDataView.h"

@implementation EpiInfoOptionField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [picked setText:[NSString stringWithFormat:@"%d", row]];
    if (self.textFieldToUpdate)
    {
        [self.textFieldToUpdate setText:[NSString stringWithString:[NSString stringWithFormat:@"%d", row]]];
    }
    if (self.viewToAlertOfChanges)
    {
        [self.viewToAlertOfChanges didChangeValueForKey:[NSString stringWithString:[listOfValues objectAtIndex:row]]];
    }
    [(EnterDataView *)[[self superview] superview] fieldResignedFirstResponder:self];
    
}

- (void)setSelectedLegalValue:(NSString *)selectedLegalValue
{
    [self.picker selectRow:[selectedLegalValue intValue] inComponent:0 animated:NO];
    [self.textFieldToUpdate setText:[NSString stringWithFormat:@"%d", [selectedLegalValue intValue]]];
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
