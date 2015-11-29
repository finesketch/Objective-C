//
//  AppDelegate.m
//  ExcelHeader
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
    
    [self generateExcelHeader];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)generateExcelHeader
{
    NSArray *alphabetArray = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    
    NSMutableArray *alphabetArray = [NSMutableArray new];
    int endIndex = 16384;
    int quotient = 0;
    
    for (int i = 0; i > 0 && quotient < 27; i++)
    {
        NSString alpha = [NSString stringWithFormat:@"%@%@", [alphabetArray objectAtIndex:quotient - 1], [alphabetArray objectAt]];
    }

}

@end
