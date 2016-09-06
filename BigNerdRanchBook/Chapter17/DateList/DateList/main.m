//
//  main.m
//  DateList
//
//  Created by Kyle Chew on 9/6/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // create threee NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0 * -1];
        
        // Create an array containing all three
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        // Print a couple of dates
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[1]);
        
        // How many dates are in the array
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Iterating over arrays
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // NSMutableArray - create an empty array
        NSMutableArray *dateList1 = [NSMutableArray array];
        
        // add dates to dateList1
        [dateList1 addObject:now];
        [dateList1 addObject:tomorrow];
        
        // add again
        [dateList1 insertObject:yesterday atIndex:0];
        
        // add dates to dateList1
        [dateList1 addObject:now];
        [dateList1 addObject:tomorrow];
        [dateList1 addObject:yesterday];
        
        // fast enumration
        for (NSDate *d in dateList1) {
            NSLog(@"here is a date again: %@", d);
        }
        
        // remove
        [dateList1 removeObjectAtIndex:0];
        
        // fast enumeration
        for (NSDate *d in dateList1) {
            NSLog(@"After removed: %@", d);
        }
        
        // old array
        NSArray *dateList2 = [NSArray arrayWithObjects:yesterday, now, tomorrow, nil];
        NSLog(@"The first date is %@", [dateList2 objectAtIndex:0]);
        NSLog(@"The second date is %@", [dateList2 objectAtIndex:1]);
        
        // good old style of writing []
        id selectedDate = [dateList2 objectAtIndex:0];
        NSLog(@"id object %@", selectedDate);
        
    }
    return 0;
}
