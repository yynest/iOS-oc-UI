//
//  FlipCardView.m
//  iOS_oc_UI
//
//  Created by shidai on 25/04/24.
//

#import "FlipCardView.h"

@interface FlipCardView ()

@property (nonatomic, strong) UIImageView *cardImageView;
@property (nonatomic, assign) BOOL isCardFrontVisible;

@end

@implementation FlipCardView

- (instancetype)initFront:(NSString *)frontCard frame:(CGRect)rect {
    if (self == [super initWithFrame:rect]) {
        
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    // 创建UIImageView来显示扑克牌
    self.cardImageView = [[UIImageView alloc] init];
    self.cardImageView.frame = CGRectMake(100, 100, 100, 150); // 设置扑克牌的大小和位置
    self.cardImageView.userInteractionEnabled = NO;
    self.cardImageView.image = [UIImage imageNamed:@"2.png"]; // 初始设置为正面
    [self addSubview:self.cardImageView];

    // 初始设置扑克牌是否显示正面
    self.isCardFrontVisible = YES;
}

- (void)flipCard {
    // 切换扑克牌的正面和背面，并应用翻转动画
    if (self.isCardFrontVisible) {
        self.cardImageView.image = [UIImage imageNamed:@"3.png"]; // 切换到背面
    } else {
        self.cardImageView.image = [UIImage imageNamed:@"2.png"]; // 切换到正面
    }
    // 应用翻转动画
    [UIView animateWithDuration:2.5
                          delay:0.0
                        options:UIViewAnimationOptionTransitionFlipFromLeft
                     animations:^{
                         // 在这里可以添加额外的动画效果，但在这个例子中我们不需要
                     }
                     completion:^(BOOL finished) {
                         // 动画完成后调用的代码块
                         self.isCardFrontVisible = !self.isCardFrontVisible; // 切换状态
                     }];
}


@end
