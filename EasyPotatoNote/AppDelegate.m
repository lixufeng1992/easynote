//
//  AppDelegate.m
//  EasyPotatoNote
//
//  Created by Li,Xufeng on 2019/9/23.
//  Copyright © 2019 Li,Xufeng. All rights reserved.
//

#import "AppDelegate.h"
#import "EPNHomeViewController.h"

@interface AppDelegate ()
@property (nonatomic, strong, readwrite) UIWindow *window;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    EPNHomeViewController *rootVc =  [[EPNHomeViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:rootVc];
    self.window.rootViewController = navi;
    
    self.window.backgroundColor = [UIColor clearColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
