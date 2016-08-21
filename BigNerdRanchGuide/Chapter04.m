//
//  Chapter02.m
//  BigNerdRanchGuide
//
//  Created by Kyle Chew on 8/20/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import "Chapter04.h"

@interface Chapter04()

@end

@implementation Chapter04

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self example];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (void)example {
    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5;
    
    if (5 < j - k) {
        printf("The first expression is true.");
    }
    else if (j < i) {
        printf("The second expresssion is true.");
    }
    else {
        printf("Neither express is true");
    }
}


@end
