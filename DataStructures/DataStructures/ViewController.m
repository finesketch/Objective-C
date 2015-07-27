//
//  ViewController.m
//  DataStructures
//
//  Created by Kyle Chew on 7/25/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createArrays];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Below is the example of different ways to create an array
- (void)createArrays
{
    // first array is created using list of string values
    NSArray *firstArray = @[@"Mercedes-Benz", @"BMW", @"Porsche", @"Opel", @"Volkswagen", @"Audi", @"XXX"];
    
    // second array is created using NSArray object which also contains multiple string values
    NSArray *secondArray = [NSArray arrayWithObjects:@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley", @"XXX", nil];
    
    NSString *thirdString = @"Toyota Honda Nissen";
    NSArray *thirdArray = [thirdString componentsSeparatedByString:@" "];
    
    // output the value of firstArray
    NSLog(@"First array has the following German make: %@", firstArray);
    
    // output the value of secondArray
    NSLog(@"Second array has the following U.K. make: %@", secondArray);
    
    NSMutableArray *check1Array = [NSMutableArray arrayWithArray:firstArray];
    [check1Array removeObjectsInArray:secondArray];
    
    NSMutableArray *check2Array = [NSMutableArray arrayWithArray:secondArray];
    [check2Array removeObjectsInArray:firstArray];
    [check1Array addObjectsFromArray:[check2Array copy]];
    
    // Looping
    for (id item in check1Array)
    {
        NSLog(@"%@", item);
    }
    
}

@end
