//
//  FSQueue.h
//  QueueStack
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSQueue : NSObject

@property (assign, readonly) long count;

-(void)enqueue:(id)anObject;
-(id)dequeue;

@end
