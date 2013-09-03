//
//  NTViewController.m
//  NTLevelMeterViewDemo
//
//  Created by naoty on 2013/09/03.
//  Copyright (c) 2013年 Naoto Kaneko. All rights reserved.
//

#import "NTViewController.h"
#import "NTLevelMeterView.h"

@interface NTViewController ()

@property (nonatomic) NTLevelMeterView *levelMeterView;

@end

@implementation NTViewController

const int kMaxLevel = 10;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.levelMeterView = [[NTLevelMeterView alloc] initWithFrame:CGRectMake(20.0, 20.0, 200.0, 44.0) maxLevel:kMaxLevel];
    [self.view addSubview:self.levelMeterView];
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateLevel) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)updateLevel
{
    self.levelMeterView.level = arc4random_uniform(kMaxLevel);
}

@end
