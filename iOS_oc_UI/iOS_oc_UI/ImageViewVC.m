//
//  ImageViewVC.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//

#import "ImageViewVC.h"

@interface ImageViewVC ()

@end

@implementation ImageViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addImageView];
    [self addImageViewWithAnimation];
}

-(void)addImageView{
    UIImageView *imgview = [[UIImageView alloc]
    initWithFrame:CGRectMake(10, 10, 300, 400)];
    [imgview setImage:[UIImage imageNamed:@"2.jpg"]];
    [imgview setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview];
}

-(void)addImageViewWithAnimation{
    UIImageView *imgview = [[UIImageView alloc]
    initWithFrame:CGRectMake(10, 10, 300, 400)];
    // set an animation
    imgview.animationImages = [NSArray arrayWithObjects:
    [UIImage imageNamed:@"2.jpg"],
    [UIImage imageNamed:@"3.jpg"], nil];
    imgview.animationDuration = 4.0;
    imgview.contentMode = UIViewContentModeCenter;
    [imgview startAnimating];
    [self.view addSubview:imgview];
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
