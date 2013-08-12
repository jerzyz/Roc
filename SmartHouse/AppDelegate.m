//
//  AppDelegate.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "AppDelegate.h"
#import "SHLoginViewViewController.h"
#import "SHControlViewController.h"
#import "SHSettingsViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[SHLoginViewViewController alloc] initWithNibName:nil bundle:nil];
    UIViewController *viewController2 = [[SHControlViewController alloc] initWithNibName:nil bundle:nil];
    UIViewController *viewController3 = [[SHSettingsViewController alloc] initWithNibName:nil bundle:nil];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[viewController1, viewController2, viewController3];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
