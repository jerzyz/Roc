//
//  SHLoginViewViewController.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "SHLoginViewViewController.h"

#define AREA_COUNT 10

@interface SHLoginViewViewController ()

@end

@implementation SHLoginViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"登陆界面";
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)setupNavigationView
{
    [self setNavigationImage:[UIImage imageNamed:@"first"]];
    [self setNavigationTitle:@"登陆界面"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
