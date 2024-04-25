//
//  FlipCardView.h
//  iOS_oc_UI
//
//  Created by shidai on 25/04/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlipCardView : UIView

- (instancetype)initFront:(NSString *)frontCard frame:(CGRect)rect;
- (void)flipCard;
@end

NS_ASSUME_NONNULL_END
