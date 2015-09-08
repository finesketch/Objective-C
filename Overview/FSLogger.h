//
//  FSLogger.h
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
- (void)zoneChange:(NSNotification *)note;

@end
