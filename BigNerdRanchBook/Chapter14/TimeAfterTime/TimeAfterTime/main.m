//
//  main.m
//  TimeAfterTime
//
//  Created by Kyle Chew on 9/6/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        NSLog(@"Another way of write it, like this %f seconds since the start of 1970", [[NSDate date] timeIntervalSince1970]);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long days = [cal ordinalityOfUnit:NSCalendarUnitDay
                                            inUnit:NSCalendarUnitMonth
                                           forDate:now];
        NSLog(@"This is day %lu of the month", days);
        
        // alloc and init
        NSDate *now1 = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now1);
        NSLog(@"The date is %@", now1);
        
        // Sending messages to nil
        // nil is for Objective-C object type
        // NULL pointer of "struct"
        
        // "id" - without knowing the kind of pointer will refer to
        // there is no "*"
        id delegate;
        
        
        
        
    }
    return 0;
}
