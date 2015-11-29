//
//  AppDelegate.m
//  SelectionSort
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
    NSArray *bubbleSortedArray = [self selectionSort:dataArray];
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

-(NSArray *)selectionSort:(NSMutableArray *)unsortedDataArray
{
    int pointerMin;
    int i, j;
    long count = unsortedDataArray.count;
    int selectionSortCount;
    
    for (j = 0; j < count; j++)
    {
        //for each element in the array, assume that the first element is the minimum number
        pointerMin = j;
        for (i = j + 1; i < count; i++)
        {
            //Iterate through each element in the array starting from the next element and compare with minimum number set from the outer for loop
            if ([unsortedDataArray objectAtIndex:i] < [unsortedDataArray objectAtIndex:pointerMin])
            {
                pointerMin = i;
            }
            selectionSortCount++;
        }
        
        if (pointerMin != j)
        {
            [unsortedDataArray exchangeObjectAtIndex:j withObjectAtIndex:pointerMin];
        }
    }
    
    NSLog(@"Iterations: %d", selectionSortCount);
    
    return unsortedDataArray;
}

@end
