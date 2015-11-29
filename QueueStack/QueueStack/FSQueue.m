//
//  FSQueue.m
//  QueueStack
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//

#import "FSQueue.h"

@interface FSQueue()
@property (strong)NSMutableArray *data;
@end

@implementation FSQueue

-(instancetype)init
{
    if (self = [super init])
    {
        _data = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)enqueue:(id)anObject
{
    [self.data addObject:anObject];
    _count = self.data.count;
}

-(id)dequeue
{
    id headObject = [self.data objectAtIndex:0];
    if (headObject != nil) {
        [self.data removeObjectAtIndex:0];
        _count = self.data.count;
    }
    return headObject;
}

@end
