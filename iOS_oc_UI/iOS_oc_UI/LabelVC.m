//
//  LableVC.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//

#import "LabelVC.h"

@interface LabelVC ()

@end

@implementation LabelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *aLabel = [[UILabel alloc]initWithFrame:
    CGRectMake(20, 200, 280, 80)];
    aLabel.numberOfLines = 0;
    aLabel.textColor = [UIColor blueColor];
    aLabel.backgroundColor = [UIColor clearColor];
    aLabel.textAlignment = NSTextAlignmentCenter;
    aLabel.text = @"This is a sample text\n of multiple lines.here number of lines is not limited.";
    [self.view addSubview:aLabel];
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
