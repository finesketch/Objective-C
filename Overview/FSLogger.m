//
//  FSLogger.m
//  Overview
//
//  Created by Kyle Chew on 9/7/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import "FSLogger.h"

@implementation FSLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

- (NSArray *)closeToOriginPoints:(NSArray *)points forK:(int)k
{
    [points sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2)
    {
        CGPoint p1 = ((NSValue *)obj1).pointValue;
        CGPoint p2 = ((NSValue *)obj2).pointValue;
         
        float dist1 = sqrt(p1.x * p1.x + p1.y * p1.y);
        float dist2 = sqrt(p2.x * p2.x + p2.y * p2.y);
        
        return (dist1 > dist2) ? NSOrderedDescending : (dist1 == dist2) ? NSOrderedSame : NSOrderedAscending;
     }];
     
     return [points objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, k)]];
}

     
#pragma mark - NSURLConnectionDataDelegate

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    if (!_incomingData)
    {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    NSLog(@"The whole string is %@", string);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed %@", [error localizedDescription]);
    _incomingData = nil;
}



@end
