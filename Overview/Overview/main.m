//
//  main.m
//  Overview
//
//  Created by Kyle Chew on 9/5/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>
#import "FSPerson.h"
#import "FSEmployee.h"
#import "FSLogger.h"

#define M_PI        3.14159265358979323846264338327950288
#define MAX(A,B)    (A > B ? A : B)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // **********************************
        // NSDate
        // **********************************
        
        // date and then output the address now object
        NSDate *now = [NSDate date]; // class method
        NSLog(@"The address of the now object: %p", now);
        
        // Or output the description of now object
        // Output format for the date: 2015-09-05 23:56:02 +0000
        NSLog(@"The date is %@", now);
        
        // 12:00 am on January 1st, 1970
        double secondsSince1970 = [now timeIntervalSince1970]; // instance method
        NSLog(@"It has been %f seconds since the start of 1970.", secondsSince1970);
        
        NSDate *now1 = [now dateByAddingTimeInterval:100000];
        NSLog(@"The updated date is %@", now1);
        
        // alloc and init
        NSDate *now2 = [[NSDate alloc] init];
        NSLog(@"now2 %@", now2);
        
        // nil check
        NSDate *now3;
        if (now3 == nil)
            now3 = [[NSDate alloc] init];
        
        NSLog(@"now3 is %@", now3);
        
        now3 = nil;
        NSLog(@"nil now3 is %@", now3);
        
        
        // **********************************
        // NSCalendar
        // **********************************
        
        // Output calendar type
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My Calendar is %@", [cal calendarIdentifier]);
        
        // calendar ordinality
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitCalendar
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        
        // **********************************
        // NSDateComponents
        // **********************************
        
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        [dateComponents setYear:2015];
        [dateComponents setMonth:7];
        [dateComponents setDay:21];
        [dateComponents setHour:15];
        [dateComponents setMinute:32];
        [dateComponents setSecond:20];
        [dateComponents setNanosecond:2501];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:dateComponents];
        
        NSLog(@"Date of Birth is: %@", dateOfBirth);
        
        
        // **********************************
        // Pointer
        // **********************************
        
        NSDate *currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime); // 0x0
        
        // **********************************
        // NSString
        // **********************************
        
        NSString *lament = @"my text";
        
        NSString *slogan = @"I \u2661 you!"; //I ♡ you!
        NSLog(@"%@", slogan);
        
        NSString *dateString = [NSString stringWithFormat:@"The date is %@", now];
        NSLog(@"%@", dateString);
        
        __unused NSUInteger charcount = [dateString length];
        //NSLog(@"%", charcount);
        
        if ([slogan isEqualToString:lament]) {
            NSLog(@"%@ and %@ are equal", slogan, lament);
        }
        
        NSString *angryText = @"That makes me so mad.";
        __unused NSString *reallyAngryText = [angryText uppercaseString];
        
        NSString *listOfNames = @"John Mary Mike";
        NSString *name = @"John";
        NSRange match = [listOfNames rangeOfString:name];
        if (match.location == NSNotFound) {
            NSLog(@"No match found!");
        } else {
            NSLog(@"Match found");
        }
        
        NSString *firstText = @"John";
        NSString *secondText = @"john";
        
        
        if ([firstText caseInsensitiveCompare:secondText] == NSOrderedSame) {
            NSLog(@"Case insensitive");
        }
        
        /*
        const char *response = readline("Where should I start counting? ");
        NSString *startString = [NSString stringWithUTF8String:response];
        NSInteger startValue = [startString integerValue];
        
        for (NSInteger i = startValue; i >= 0; i--) {
            NSLog(@"%ld", (long)i);
            if ((i % 5) == 0) {
                NSLog(@"Found one");
            }
        }
         */
        
        
        // **********************************
        // NSString
        // **********************************
        
        NSLog([@"1234567890" substringFromIndex:4]);
        NSLog([@"1234567890" substringToIndex:6]);
        NSLog([@"1234567890" substringWithRange:NSMakeRange(3, 5)]);
        
        
        // **********************************
        // NSArray
        // **********************************
        
        NSDate *now4 = [NSDate date];
        NSDate *tomorrow = [now4 dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now4 dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // create array
        NSArray *dateList = @[now4, tomorrow, yesterday];
        NSLog(@"%@", dateList);
        
        // Accessing
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The second date is %@", dateList[1]);
        NSLog(@"The third date is %@", dateList[2]);
        
        NSLog(@"There are %lu dates in the array", [dateList count]);
        
        // slow iterating
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++)
        {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // fast enumeration
        for (NSDate *d in dateList)
        {
            NSLog(@"Here is the date again: %@", d);
        }
        
        // **********************************
        // NSMutableArray
        // **********************************
        
        __unused NSMutableArray *dateList1 = [[NSMutableArray alloc] init];
        
        NSMutableArray *dateList2 = [NSMutableArray array];
        
        // add objects
        [dateList2 addObject:now];
        [dateList2 addObject:now1];
        [dateList2 addObject:now2];
        [dateList2 addObject:tomorrow];
        [dateList2 addObject:yesterday];
        
        // insert object
        if (now3 == nil)
            now3 = [NSDate date];
        [dateList2 insertObject:now3 atIndex:1];
        
        // enumeration
        for (NSDate *d in dateList2)
        {
            NSLog(@"for-loop statement: %@", d);
            
            // cannot modify the NSMutableArray in the fast enumeration
            // Reason: '*** Collection <__NSArrayM: 0x100307b50> was mutated while being enumerated.
            //[dateList2 addObject:[NSDate date]];
        }
        
        // Remove date object
        [dateList2 removeObjectAtIndex:1];
        NSLog(@"Now the index \"1\" item is: %@", dateList2[1]);
        
        // old style of creating the NSArray
        // Need to provide the nil in the end of the array
        NSArray *dateList4 = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        NSLog(@"The first date is %@", dateList4[0]);
        
        // grocery list
        NSArray *items = @[@"Loaf of bread", @"Container of milk", @"Stick of butter"];
        NSMutableArray *groceryList = [NSMutableArray arrayWithArray:items];
        
        NSLog(@"My grocery list is:");
        for (id item in groceryList)
        {
            NSLog(@"%@", item);
        }
        
        // Challenge: Names on my Mac
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names)
        {
            NSRange r = [n rangeOfString:@"a" options:NSCaseInsensitiveSearch];
            
            if (r.location != NSNotFound)
            {
                NSLog(@"%@", n);
                break; // just first item
            }
        }
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // find the match
        for (NSString *name in names)
        {
            NSString *lowerCasseName = [name lowercaseString];
            if ([words containsObject:lowerCasseName] == YES)
            {
                NSLog(@"%@", name);
                break; // just first item
            }
        }
        
        
        // **********************************
        // NSData
        // **********************************
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/usr/share/dict/words"];
        NSLog(@"The file read from the word dictionary is: %lu bytes in size", (unsigned long)[readData length]);
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSLog(@"Path: %@", paths);
        
        
        // **********************************
        // Class
        // **********************************
        
        FSPerson *person = [[FSPerson alloc] init];
        person.heightInMeters = 1.8;
        person.weightInKilos = 75;
        
        float height = person.heightInMeters;
        int weight = person.weightInKilos;
        NSLog(@"This person height is %0.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [person bodyMassIndex];
        NSLog(@"This person BMI is %0.5f", bmi);
        
        
        // **********************************
        // Object instance variables and properties
        // Type 1: Object-type
        // Type 2: To-on relationship
        // Type 3: To-many relationship
        // **********************************
        
        FSEmployee *employee = [[FSEmployee alloc] init];
        employee.employeeID = 12345678;
        //employee.officeAlarmCode = 1688888; // hidden property
        employee.hireDate = [[NSDate date] dateByAddingTimeInterval:-365.0 * 24.0 * 60.0 * 60.0]; // last year
        employee.lastName = @"Smith";
        employee.spouse = [[FSPerson alloc] init];
        employee.children = [[NSMutableArray alloc] initWithObjects:[[FSPerson alloc] init], nil];
        
        NSLog(@"%@", employee);
        
        
        // **********************************
        // Sorting
        // **********************************
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        FSEmployee *smith = [[FSEmployee alloc] init];
        smith.lastName = @"Smith";
        [employees addObject:smith];
        
        FSEmployee *jones = [[FSEmployee alloc] init];
        jones.lastName = @"Jones";
        [employees addObject:jones];
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        
        
        // **********************************
        // Filtering
        // use %K for the field name
        // **********************************
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == %@", @"lastName", @"Smith"];
        [employees filterUsingPredicate:predicate];
        
        NSLog(@"%@", employees);
        
        
        // **********************************
        // Constant
        // **********************************
        
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:@"currency"];
        NSLog(@"Money is %@", currency);
        
        NSString *currency1 = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money again is %@", currency1);
        
        NSCalendar *calendar = [here objectForKey:NSLocaleCalendar];
        NSLog(@"Calendar is %@", calendar);
        
        NSLog(@"Here ");

        
        // **********************************
        // Callback
        // **********************************
        
        // Target-action
        FSLogger *logger = [[FSLogger alloc] init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        // Helper Callback
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        // Notification
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        
        
        // **********************************
        // Wildcard search
        // **********************************
        
        NSArray *searchTerm = @[@"cat", @"cot", @"cut", @"cit", @"OKO", @"chy"];
        
        NSString *wildCardString = [@"c.." stringByReplacingOccurrencesOfString:@"." withString:@"*"];
        NSPredicate *wildCardPredicate = [NSPredicate predicateWithFormat:@"SELF LIKE %@", wildCardString];
        //NSPredicate *wildCardPredicate = [NSPredicate predicateWithFormat:@"(SELF beginswith[c] 'c') AND (SELF endswith[c] 't')"];
        
        NSArray *filterResults = [searchTerm filteredArrayUsingPredicate:wildCardPredicate];
        
        for (NSString *str in filterResults)
        {
            NSLog(@"Wildcard Search: %@", str);
        }
        
        
        // **********************************
        // Find Medium
        // **********************************
        
        NSMutableArray *numbers = [[NSMutableArray alloc] init];
        NSNumber *number1 = [NSNumber numberWithInt:2];
        NSNumber *number2 = [NSNumber numberWithInt:7];
        NSNumber *number3 = [NSNumber numberWithInt:4];
        NSNumber *number4 = [NSNumber numberWithInt:9];
        NSNumber *number5 = [NSNumber numberWithInt:1];
        NSNumber *number6 = [NSNumber numberWithInt:5];
        NSNumber *number7 = [NSNumber numberWithInt:8];
        NSNumber *number8 = [NSNumber numberWithInt:3];
        NSNumber *number9 = [NSNumber numberWithInt:6];
        [numbers addObject:number1];
        [numbers addObject:number2];
        [numbers addObject:number3];
        [numbers addObject:number4];
        [numbers addObject:number5];
        [numbers addObject:number6];
        [numbers addObject:number7];
        [numbers addObject:number8];
        [numbers addObject:number9];
        
        NSNumber *medium = [[numbers sortedArrayUsingSelector:@selector(compare:)] objectAtIndex:[numbers count] / 2];
        
        NSLog(@"Medium: %@", medium);
        
        
        // **********************************
        // Anagram
        // **********************************
        
        NSMutableSet *characterSets = [NSMutableSet set];
        NSArray *anagramWords = @[@"bag", @"bat", @"tab"];
        for (NSString *word in anagramWords)
        {
            NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:word];
            if ([characterSets containsObject:characterSet])
            {
                NSLog(@"YES - Anagram.");
            }
            [characterSets addObject:characterSet];
        }
        
        
        // **********************************
        // Merge and sort
        // **********************************
        
        NSArray *longList = @[@[@12,@19,@22],
                              @[@02,@15,@19],
                              @[@44,@56,@77,@79],
                              @[@24,@25,@40,@91,@94],
                              @[@13,@33,@42],
                              @[@14,@35,@46],
                              @[@16],
                              @[@31],
                              @[@9],
                              ];
        
        NSMutableSet *elements = [NSMutableSet set];
        
        for (NSArray *array in longList)
        {
            if ([array isKindOfClass:[NSArray class]])
            {
                [elements addObjectsFromArray:array];
            }
        }
        
        NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
        
        NSArray *sortedList = [elements sortedArrayUsingDescriptors:@[sortDescriptor]];
        
        NSLog(@"%@", sortedList);
        
        
        // **********************************
        // Phone number and possible characters
        // **********************************
        
        NSArray *inputs = @[@1, @1, @2, @1, @1, @8];
        
        NSDictionary *dict = @{@2: @[@"A", @"B", @"C"],
                               @3: @[@"D", @"E", @"F"],
                               @4: @[@"G", @"H", @"I"],
                               @5: @[@"J", @"K", @"L"],
                               @6: @[@"M", @"N", @"O"],
                               @7: @[@"P", @"Q", @"R", @"S"],
                               @8: @[@"T", @"U", @"V"],
                               @9: @[@"W", @"X", @"Y", @"Z"]};
        
        NSMutableArray *strings = [NSMutableArray array];
        for (NSNumber *number in inputs)
        {
            NSArray *letters = dict[number];
            
            if ([strings count] == 0)
            {
                /*
                for (NSString *letter in letters)
                {
                    [strings addObject:letter];
                }
                 */
                [strings addObjectsFromArray:letters];
            }
            else
            {
                NSArray *copy = [strings copy];
                [strings removeAllObjects];
                for (NSString *string in copy)
                {
                    for (NSString *letter in letters)
                    {
                        [strings addObject:[string stringByAppendingString:letter]];
                    }
                    
                }
            }
        }
        
        NSLog(@"Phone number keypad: %@", strings);
        
        /*
        
         iPhone 1 to iPhone 3gs --- 320px * 480px
         iPhone 4 and iPhone 4s --- 640px * 960px
         iPhone 5 and iPhone 5s --- 640px * 1136px
         iPhone 6               --- 750px * 1334px
         iPhone 6plus           --- 1242px * 2208px
         
        */
        
        /*
         
         Objective-C provides two methods of application memory management.
         a) “Manual retain-release” or MRR : Here you explicitly manage memory by keeping track of objects you own. This is implemented using a model, known as reference counting, that the Foundation class NSObject provides in conjunction with the runtime environment.
         b) Automatic Reference Counting, or ARC: Here, the system uses the same reference counting system as MRR, but it inserts the appropriate memory management method calls for you at compile-time. You are strongly encouraged to use ARC for new projects.
         
         */
        
        // **********************************
        // Array and duplication
        // **********************************
        
        NSOrderedSet *orderSet = [NSOrderedSet orderedSetWithArray:@[@2, @1, @3, @1, @2]];
        
        // An array containing the objects to add to the new ordered set. If the same object appears more than once in array, it is added only once to the returned set.
        NSArray *a = [orderSet array];
        
        NSLog(@"%@", a);
        
        
        
        // **********************************
        // NSRunLoop
        // **********************************
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    
    return 0;
}



