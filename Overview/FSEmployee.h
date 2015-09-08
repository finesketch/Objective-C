//
//  FSEmployee.h
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import "FSPerson.h"
@class FSAsset; // very awesome use this syntac

@interface FSEmployee : FSPerson
{
    //NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;
@property (nonatomic) NSString *lastName;
@property (nonatomic) FSPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@end
