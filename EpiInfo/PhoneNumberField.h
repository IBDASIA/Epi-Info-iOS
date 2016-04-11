//
//  PhoneNumberField.h
//  EpiInfo
//
//  Created by John Copeland on 11/27/13.
//

#import "EpiInfo-Swift.h"
#import "EpiInfoControlProtocol.h"
#import <UIKit/UIKit.h>

@interface PhoneNumberField : UITextField <EpiInfoControlProtocol>
-(NSString *)value;
-(void)setFormFieldValue:(NSString *)formFieldValue;

@property CheckCode *checkcode;
@property NSString *columnName;
@end
