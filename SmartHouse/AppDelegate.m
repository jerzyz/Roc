//
//  AppDelegate.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "AppDelegate.h"
#import "SHLoginViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.loginView = [[SHLoginViewController alloc] initWithNibName:nil bundle:nil];
    // Override point for customization after application launch.
    //UIViewController *viewController1 = [[SHLoginViewViewController alloc] initWithNibName:nil bundle:nil];
    //UIViewController *viewController2 = [[SHControlViewController alloc] initWithNibName:nil bundle:nil];
    //UIViewController *viewController3 = [[SHSettingsViewController alloc] initWithNibName:nil bundle:nil];
    
    //self.tabBarController = [[UITabBarController alloc] init];
    //self.tabBarController.viewControllers = @[viewController1, viewController2, viewController3];
    self.window.rootViewController = self.loginView;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
