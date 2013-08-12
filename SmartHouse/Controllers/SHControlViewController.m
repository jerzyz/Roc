//
//  SHControlViewController.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "SHControlViewController.h"
#import "SHSettingsViewController.h"
#import "SHControlViewController.h"

@interface SHControlViewController ()

@end

@implementation SHControlViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIViewController *viewController1 = [[SHControlViewController alloc] initWithNibName:nil bundle:nil];
        UIViewController *viewController2 = [[SHSettingsViewController alloc] initWithNibName:nil bundle:nil];
        
        self.tabBarController = [[UITabBarController alloc] init];
        self.tabBarController.viewControllers = @[viewController1, viewController2];
    }
    return self;
}

- (void)setupNavigationView
{
    [self setNavigationImage:[UIImage imageNamed:@"first"]];
    [self setNavigationTitle:@"控制界面"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
