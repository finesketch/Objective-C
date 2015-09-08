//
//  FSPerson.h
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSPerson : NSObject
{
    // FSPerson has two instance variables
    //float _heightInMeters;
    //int _weightInKilos;
}

// Instance variables
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
@property (nonatomic, copy) NSString *Word; // immutable object
@property (nonatomic, copy) NSArray *Words; // immutable obejct

//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;

// method(s)
- (float)bodyMassIndex;

@end