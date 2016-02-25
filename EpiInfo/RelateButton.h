//
//  RelateButton.h
//  EpiInfo
//
//  Created by John Copeland on 2/25/16.
//

#import <UIKit/UIKit.h>

@interface RelateButton : UIButton
{
    NSString *relatedViewName;
}
-(void)setRelatedViewName:(NSString *)rvn;
-(NSString *)relatedViewName;
@end