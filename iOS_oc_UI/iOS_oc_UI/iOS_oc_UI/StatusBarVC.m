//
//  StatusBarVC.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//

#import "StatusBarVC.h"

@interface StatusBarVC ()

@end

@implementation StatusBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self performSelector:@selector(hideStatusbar)
        withObject:nil afterDelay:2.0];
}

-(void)hideStatusbar{
    [[UIApplication sharedApplication] setStatusBarHidden:YES
    withAnimation:UIStatusBarAnimationFade];
    [UIView beginAnimations:@"Statusbar hide" context:nil];
    [UIView setAnimationDuration:0.5];
    [self.view setFrame:CGRectMake(0, 0, 320, 480)];
    [UIView commitAnimations];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
