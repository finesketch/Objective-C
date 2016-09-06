//
//  main.m
//  TimesTwo
//
//  Created by Kyle Chew on 9/6/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSDate *currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSDate *currentTime1 = [NSDate date];
        NSLog(@"currentTime1's value is %p", currentTime1);
        
        sleep(2);
        
        currentTime1 = [NSDate date];
        NSLog(@"currentTime1's value now is %p", currentTime1);
        
        NSDate *startTime = currentTime1;
        
        sleep(2);
        
        NSLog(@"The address of the original object is %p", startTime);
        
    }
    return 0;
}
