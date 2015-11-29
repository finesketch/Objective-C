//
//  AppDelegate.m
//  QuickSort
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
    
    //Begin test Bubble Sorting Code
    NSArray *dArray =@[@101, @5, @1000, @201, @301, @121, @11, @123, @87, @21, @786, @14, @90, @32, @76, @8377, @89, @987, @9, @65];
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:dArray];
    
    //Check Bubble Sort
    NSArray *bubbleSortedArray = [self quickSort:dataArray];
    NSLog(@"Number of items: %lu", (unsigned long)bubbleSortedArray.count);     //Number of Iterations
    
    //bubbleSortCount is a static variable initialized to 0 //Gives the average & worst case of n^2
    NSLog(@"Array: %@", bubbleSortedArray); //Prints the sorted array
    //bubbleSortCount = 0;  //Reinitialize the static variable to 0 to retest
    //NSLog(@"bubbleSortedArray %@",[self selectionSort:dataArray]); //Resort the already sorted array
    //NSLog(@"bubbleSortCount %d", 0); //Gives the best case count of n
    //End test Bubble Sorting Code
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(NSArray *)quickSort:(NSMutableArray *)unsortedDataArray
{
    int count;
    
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc] init];
    
    if ([unsortedDataArray count] < 1)
    {
        return nil;
    }
    
    int randomPivotPoint = arc4random() % [unsortedDataArray count];
    NSNumber *pivotValue = [unsortedDataArray objectAtIndex:randomPivotPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivotPoint];
    
    for (NSNumber *num in unsortedDataArray)
    {
        count++;
        
        if (num < pivotValue) {
            [lessArray addObject:num];
        }
        else
        {
            [greaterArray addObject:num];
        }
    }
    
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    
    NSLog(@"Iterations: %d", count);
    
    return sortedArray;
}


@end
