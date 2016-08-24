//
//  main.m
//  TimeAfterTime
//
//  Created by Kyle Chew on 8/24/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
    }
    return 0;
}
