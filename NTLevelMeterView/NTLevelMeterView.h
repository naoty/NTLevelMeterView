//
//  NTLevelMeterView.h
//  NTLevelMeterView
//
//  Created by naoty on 2013/09/03.
//  Copyright (c) 2013年 Naoto Kaneko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NTLevelMeterView : UIView

@property (nonatomic) NSUInteger level;
 
- (NTLevelMeterView *)initWithFrame:(CGRect)frame maxLevel:(NSUInteger)maxLevel;

@end
