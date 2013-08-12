//
//  SHNavigationViewController.h
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHNavigationViewController : UIViewController

@property (nonatomic,strong) UINavigationBar *navigetionBar;

- (void)setupNavigationView;
- (void)setNavigationTitle:(NSString *)title;
- (void)setNavigationImage:(UIImage *)image;

@end
