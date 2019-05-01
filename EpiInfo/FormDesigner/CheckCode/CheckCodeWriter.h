//
//  CheckCodeWriter.h
//  EpiInfo
//
//  Created by John Copeland on 4/29/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CheckCodeWriter : UIView
{
    UIView *senderSuperview;
    NSString *beginFieldString;
    NSString *endFieldString;
    NSMutableArray *beforeFunctions;
    NSMutableArray *afterFunctions;
}
-(id)initWithFrame:(CGRect)frame AndFieldName:(NSString *)fn AndFieldType:(NSString *)ft AndSenderSuperview:(UIView *)sv;
@end

NS_ASSUME_NONNULL_END