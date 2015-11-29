//
//  FSStack.h
//  QueueStack
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSStack : NSObject

@property (assign, readonly) long count;

-(void)push:(id)anObject;
-(id)pop;
-(void)clear;
-(id)lastObject;

@end
