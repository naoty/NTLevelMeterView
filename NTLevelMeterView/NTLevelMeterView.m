//
//  NTLevelMeterView.m
//  NTLevelMeterView
//
//  Created by naoty on 2013/09/03.
//  Copyright (c) 2013年 Naoto Kaneko. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "NTLevelMeterView.h"

@interface NTLevelMeterView ()
 
@property (nonatomic) NSUInteger maxLevel;
@property (nonatomic) NSUInteger stepWidth;
@property (nonatomic) NSMutableArray *stepLayers;
 
@property (nonatomic) CGColorRef stepOnColor;
@property (nonatomic) CGColorRef stepOffColor;
 
@end

@implementation NTLevelMeterView

- (NTLevelMeterView *)initWithFrame:(CGRect)frame maxLevel:(NSUInteger)maxLevel
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.maxLevel = maxLevel;
        self.stepWidth = CGRectGetWidth(frame) / self.maxLevel;
        self.stepLayers = [NSMutableArray array];
        self.stepOnColor = [[UIColor greenColor] CGColor];
        self.stepOffColor = [[UIColor lightGrayColor] CGColor];
    }
    return self;
}
 
- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:frame maxLevel:0];
}
 
- (id)init
{
    return [self initWithFrame:CGRectZero maxLevel:0];
}
 
- (void)drawRect:(CGRect)rect
{
    CGFloat height = CGRectGetHeight(rect);
    for (int i = 0; i < self.maxLevel; i++) {
        CALayer *stepLayer = [CALayer layer];
        stepLayer.frame = CGRectMake(i * self.stepWidth, 0, self.stepWidth, height);
        stepLayer.borderColor = [[UIColor blackColor] CGColor];
        stepLayer.borderWidth = 1.0f;
        stepLayer.backgroundColor = self.stepOffColor;
        [self.layer addSublayer:stepLayer];
        self.stepLayers[i] = stepLayer;
    }
}
 
- (void)setLevel:(NSUInteger)level
{
    _level = level;
    for (int i = 0; i < self.maxLevel; i++) {
    CALayer *stepLayer = self.stepLayers[i];
        stepLayer.backgroundColor = (i < self.level) ? self.stepOnColor : self.stepOffColor;
    }
}

@end
