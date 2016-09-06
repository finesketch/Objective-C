//
//  main.m
//  groceryChallenge
//
//  Created by Kyle Chew on 9/6/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *groceryList = [[NSMutableArray alloc] init];
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList addObject:@"Stick of butter"];
        
        NSLog(@"My grocery list is:");
        
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
        
    }
    return 0;
}
