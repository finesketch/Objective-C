//
//  AppDelegate.m
//  Fibonacci
//
//  Created by Kyle Chew on 11/28/15.
//  Copyright © 2015 FineSketch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self generateFibonnacci];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)generateFibonnacci
{
    NSMutableArray *mArray = [NSMutableArray new];
    NSNumber *fibnum0 = [NSNumber numberWithDouble:0];
    NSNumber *fibnum1 = [NSNumber numberWithDouble:1];
    
    [mArray addObject:fibnum0];
    [mArray addObject:fibnum1];
    
    for (int i = 2; i < 78; i++)
    {
        [mArray addObject:[NSNumber numberWithDouble:[[mArray objectAtIndex:i - 1] doubleValue] + [[mArray objectAtIndex:i - 2] doubleValue]]];
    }
    
    NSLog(@"Fibonacci: %@", mArray);
}

@end
