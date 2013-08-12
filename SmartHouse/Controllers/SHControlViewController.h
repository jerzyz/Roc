//
//  SHControlViewController.h
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHNavigationViewController.h"

@interface SHControlViewController : SHNavigationViewController <UITabBarControllerDelegate>

@property (nonatomic, strong)UITabBarController *tabBarController;

@end
