//
//  AppDelegate.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //实例化window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    //手写项目需要初始化开始页面：
    UINavigationController *rootVC = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    rootVC.navigationBar.backgroundColor = UIColor.lightGrayColor;
    
    self.window.rootViewController = rootVC;
    
//    rootNavgationController.view.backgroundColor = [UIColor orangeColor];
    rootVC.navigationBarHidden = NO;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
