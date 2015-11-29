//
//  AppDelegate.m
//  QueueStack
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//

#import "AppDelegate.h"
#import "FSStack.h"
#import "FSQueue.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self testStack];
    [self testQueue];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)testStack
{
    FSStack *stack = [[FSStack alloc] init];
    [stack push:@"John"];
    [stack push:@"Mary"];
    [stack push:@"Jane"];
    [stack push:@"Aby"];
    
    NSLog(@"stack %@", stack);
    
    NSLog(@"count %ld", stack.count);
    
    NSLog(@"Last one before pop - %@", stack.lastObject);
    
    NSString *poppedName = [stack pop];
    
    NSLog(@"poppedName: %@", poppedName);
    
    NSLog(@"Last one after pop: %@", stack.lastObject);
    
    [stack clear];
    
    [stack pop];
    
    NSLog(@"Stack count: %ld", stack.count);
}

-(void)testQueue
{
    FSQueue *queue = [[FSQueue alloc] init];
    [queue enqueue:@"A"];
    [queue enqueue:@"B"];
    [queue enqueue:@"C"];
    [queue enqueue:@"D"];
    [queue enqueue:@"E"];
    
    NSLog(@"queue %@", queue);
    
    NSLog(@"count: %ld", queue.count);
    
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    NSLog(@"%@", queue.dequeue);
    
    
    
    
    
}

@end
