//
//  FSStack.m
//  QueueStack
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "FSStack.h"

@interface FSStack()
@property (strong)NSMutableArray *data;
@end

@implementation FSStack

-(id)init
{
    if (self = [super init])
    {
        _data = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)push:(id)anObject
{
    [self.data addObject:anObject];
    _count++;
}

-(id)pop
{
    id obj = nil;
    
    if ([self.data count] > 0)
    {
        obj = [self.data lastObject];
        [self.data removeLastObject];
        _count = self.data.count;
    }
    return obj;
}

-(void)clear
{
    [self.data removeAllObjects];
    _count = 0;
}

-(id)lastObject
{
    id obj = nil;
    
    if ([self.data count] > 0)
    {
        obj = [self.data lastObject];
    }
    return obj;
}

@end
