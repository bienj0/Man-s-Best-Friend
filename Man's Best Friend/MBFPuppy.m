//
//  MBFPuppy.m
//  Man's Best Friend
//
//  Created by Robin van 't Slot on 18-09-14.
//  Copyright (c) 2014 Brick Inc. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)givePuppyEyes
{
    
    NSLog(@":(");
    
}

-(void)bark
{
    [super bark];
    NSLog(@"Wimper Wimper");
    [self givePuppyEyes];
}

@end
