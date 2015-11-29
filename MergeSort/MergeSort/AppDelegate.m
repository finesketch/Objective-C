//
//  AppDelegate.m
//  MergeSort
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
    NSArray *bubbleSortedArray = [self mergeSort:dataArray];
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

-(NSArray *)mergeSort:(NSArray *)unsortedArray
{
    if ([unsortedArray count] < 2) {
        return unsortedArray;
    }
    
    long middle = ([unsortedArray count] / 2);
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, ([unsortedArray count] - middle));
    NSArray *leftArray = [unsortedArray subarrayWithRange:left];
    NSArray *rightArray = [unsortedArray subarrayWithRange:right];
    
    //Or iterate through the unsortedArray and create your left and right array
    //for left array iteration starts at index =0 and stops at middle, for right array iteration starts at midde and end at the end of the unsorted array
    NSArray *resultArray = [self merge:[self mergeSort:leftArray] andRight:[self mergeSort:rightArray]];
    
    return resultArray;
}

-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    int right = 0;
    int left = 0;
    
    while (left < [leftArr count] && right < [rightArr count])
    {
        if ([[leftArr objectAtIndex:left] intValue] < [[rightArr objectAtIndex:right] intValue])
        {
            [result addObject:[leftArr objectAtIndex:left++]];
        }
        else
        {
            [result addObject:[rightArr objectAtIndex:right++]];
        }
    }
    
    NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
    NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
    NSArray *newRight = [rightArr subarrayWithRange:rightRange];
    NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
    
    newLeft = [result arrayByAddingObjectsFromArray:newLeft];
    
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}

@end
