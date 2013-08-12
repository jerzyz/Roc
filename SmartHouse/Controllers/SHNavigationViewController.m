//
//  SHNavigationViewController.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "SHNavigationViewController.h"

@interface SHNavigationViewController ()

@end

@implementation SHNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigetionBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 768, 44)];
        [self setupNavigationView];
        [self.view addSubview:self.navigetionBar];
    }
    return self;
}

- (void)setupNavigationView
{
}



- (void)setNavigationTitle:(NSString *)title
{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 2, 300, 40)];
    [titleLabel setText:title];
    [titleLabel setFont:[UIFont systemFontOfSize:20.0]];
    [titleLabel setTextAlignment:NSTextAlignmentLeft];
    [titleLabel setBackgroundColor:[UIColor clearColor]];
    [self.navigetionBar addSubview:titleLabel];
}

- (void)setNavigationImage:(UIImage *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 2, 40, 40)];
    [imageView setImage:image];
    [self.navigetionBar addSubview:imageView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
