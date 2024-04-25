//
//  ViewTransitionVC.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//

#import "ViewTransitionVC.h"
#import "FlipCardView.h"

@interface ViewTransitionVC () {
    FlipCardView *cardView;
}

@end

@implementation ViewTransitionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    cardView = [[FlipCardView alloc] initFront:@"2" frame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:cardView];
    // 创建一个按钮来触发翻牌动画
    UIButton *flipButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    flipButton.frame = CGRectMake(100,400,100,50);
    [flipButton setTitle:@"Flip Card" forState:UIControlStateNormal];
    [flipButton addTarget:self action:@selector(flipCard) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:flipButton];
}

- (void)flipCard {
    // 切换扑克牌的正面和背面，并应用翻转动画
    [cardView flipCard];
}


@end
