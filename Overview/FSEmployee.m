//
//  FSEmployee.m
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import "FSEmployee.h"
#import "FSAsset.h"

@interface FSEmployee()
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation FSEmployee

- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(FSAsset *)a
{
    // nil check
    if (!_assets)
    {
        // create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    
}

- (unsigned int)valueOfAssets
{
    // sum up the resale value of the assets
    unsigned int sum = 0;
    for (FSAsset *a in _assets)
    {
        sum += [a resaleValue];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.lastName];
}

@end
