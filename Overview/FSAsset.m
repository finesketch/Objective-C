//
//  FSAsset.m
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import "FSAsset.h"

@implementation FSAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
