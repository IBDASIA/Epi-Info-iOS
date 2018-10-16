//
//  EpiInfoCodesField.h
//  EpiInfo
//
//  Created by John Copeland on 5/30/14.
//

#import "LegalValues.h"

@interface EpiInfoCodesField : LegalValues
@property NSString *textColumnName;
@property UITextField *textColumnField;
@property NSMutableArray *textColumnValues;
@end
