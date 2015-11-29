//
//  AppDelegate.m
//  BubbleSort
//
//  Created by Kyle Chew on 11/27/15.
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
    NSArray *bubbleSortedArray = [self bubbleSort:dataArray];
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

-(NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray
{
    long count = unsortedDataArray.count;
    int i;
    bool swapped = TRUE;
    int bubbleSortCount;
    
    while (swapped)
    {
        swapped = FALSE;
        for (i = 1; i < count; i++)
        {
            if ([unsortedDataArray objectAtIndex:(i - 1)] > [unsortedDataArray objectAtIndex:i])
            {
                [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = TRUE;
            }
            bubbleSortCount ++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
        }
    }
    
    NSLog(@"Iterations: %d", bubbleSortCount);
    
    return unsortedDataArray;
}

@end
