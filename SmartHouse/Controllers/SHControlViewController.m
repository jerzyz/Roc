//
//  SHControlViewController.m
//  SmartHouse
//
//  Created by Roc on 13-8-12.
//  Copyright (c) 2013年 Roc. All rights reserved.
//

#import "SHControlViewController.h"
#import "SHSettingsViewController.h"
#import "SHControlDetailViewController.h"


@interface SHControlViewController ()

@end

@implementation SHControlViewController
{
    int sceneButtonNum;// 配置文件中场景按钮的数目
    int modelButtonNum;// 配置文件中模式按钮的数目
    
    UIScrollView *view3;
    UIScrollView *view2;
    UIScrollView *view1;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIViewController *viewController1 = [[SHControlDetailViewController alloc] initWithNibName:nil bundle:nil];
    UIViewController *viewController2 = [[SHSettingsViewController alloc] initWithNibName:nil bundle:nil];
    self.viewControllers = @[viewController1, viewController2];
    [self.tabBarController setDelegate:self];
    
    
    
    // 场景部分开始
    sceneButtonNum = 43;// 假设配置文件需要43个场景按钮
    int sceneButtonNumNow = 1;// 已经画了多少个场景按钮
    int sceneButtonScrollNum = sceneButtonNum / 12 + 1;// 滚数，假设每页12个场景按钮，超出的部分滚动显示
    BOOL isSceneButtonEnough;// 场景按钮画没画够
    
    UIScrollView *sceneButtonScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, 640, 200)];
    sceneButtonScrollView.contentSize = CGSizeMake(640 * sceneButtonScrollNum, 300);
    sceneButtonScrollView.showsHorizontalScrollIndicator = NO;
    sceneButtonScrollView.showsVerticalScrollIndicator = NO;
    sceneButtonScrollView.backgroundColor = [UIColor grayColor];
    
    isSceneButtonEnough = NO;
    for (int i = 1; i <= sceneButtonScrollNum; i++) {
        for (int y = 0; y <= 100; y = y + 50) {
            for (int x = 0 + (i-1) * 640; x <= 0 + (i-1) * 640 + 180 * 3; x = x + 180) {
                if (!isSceneButtonEnough) {
                    UIButton *scenebutton = [UIButton buttonWithType:UIButtonTypeCustom];
                    scenebutton.frame = CGRectMake(x, y, 100, 30);
                    scenebutton.tag = 800000000 + 1000000 * sceneButtonNumNow;
                    [scenebutton setTitle:[NSString stringWithFormat:@"场景%d", sceneButtonNumNow] forState:UIControlStateNormal];
                    [scenebutton addTarget:self action:@selector(sceneButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
                    [sceneButtonScrollView addSubview:scenebutton];
                    if (sceneButtonNumNow == sceneButtonNum) {
                        isSceneButtonEnough = YES;
                    }
                    sceneButtonNumNow++;
                } else {
                    break;
                }
            }
        }
    }
    [self.view addSubview:sceneButtonScrollView];
    
    
    
    // 功能部分
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(94, 400, 100, 100);
    [button1 setTitle:@"灯光" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(button1Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(294, 400, 100, 100);
    [button2 setTitle:@"窗帘" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(494, 400, 100, 100);
    [button3 setTitle:@"音乐" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(button3Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    view3 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 500, 580, 420)];
    view3.backgroundColor = [UIColor yellowColor];
    UIButton *button3_1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3_1.frame = CGRectMake(0, 0, 80, 30);
    [button3_1 setTitle:@"打开" forState:UIControlStateNormal];
    [view3 addSubview:button3_1];
    [self.view addSubview:view3];
    
    view2 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 500, 580, 420)];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];
    
    view1 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 500, 580, 420)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sceneButtonClicked:(id)sender
{
    for (int i = 1; i < sceneButtonNum; i++) {
        [[self.view viewWithTag:800000000 + 1000000 * i] setBackgroundColor:[UIColor clearColor]];
    }
    [(UIButton *)sender setBackgroundColor:[UIColor redColor]];
    
    
    // 模式部分开始
    modelButtonNum = 10;// 假设配置文件需要12个模式按钮
    int modelButtonNumNow = 1;// 已经画了多少个模式按钮
    BOOL isModelButtonEnough = NO;// 模式按钮画没画够
    
    int sceneButton_Now = (((UIButton *)sender).tag - 800000000) / 1000000;
    UIView *modelView = [[UIView alloc] initWithFrame:CGRectMake(0, 250, 640, 200)];
    modelView.tag = 70000000 + sceneButtonNum * 100000;
    for (int y = 0; y <= 350; y = y + 50) {
        for (int x = 0; x <= 180 * 3; x = x +180) {
            if (!isModelButtonEnough) {
                UIButton *modelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                modelButton.frame = CGRectMake(x, y, 100, 30);
                modelButton.enabled = YES;
                [modelButton setTitle:[NSString stringWithFormat:@"模式%d", modelButtonNumNow] forState:UIControlStateNormal];
                [modelButton addTarget:self action:@selector(modelButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
                modelButton.tag = 70000000 + sceneButton_Now * 100000 + modelButtonNumNow * 1000;
                [modelView addSubview:modelButton];
                if (modelButtonNumNow == modelButtonNum) {
                    isModelButtonEnough = YES;
                }
                modelButtonNumNow++;
            } else {
                break;
            }
        }
    }
    [self.view addSubview:modelView];
}

- (void)modelButtonClicked:(id)sender
{
    NSLog(@"%d", ((UIButton *)sender).tag);
}


- (void)button1Clicked
{
    [self.view bringSubviewToFront:view1];
}
- (void)button2Clicked
{
    [self.view bringSubviewToFront:view2];
}
- (void)button3Clicked
{
    [self.view bringSubviewToFront:view3];
}

@end
