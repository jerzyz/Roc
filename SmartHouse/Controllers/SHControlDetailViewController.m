//
//  SHControlDetailViewController.m
//  SmartHouse
//
//  Created by 衣世倩 on 8/12/13.
//  Copyright (c) 2013 Roc. All rights reserved.
//

#import "SHControlDetailViewController.h"

@interface SHControlDetailViewController ()

@end

@implementation SHControlDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"设置界面";
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)setupNavigationView
{
    [self setNavigationImage:[UIImage imageNamed:@"first"]];
    [self setNavigationTitle:@"设置界面"];
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
