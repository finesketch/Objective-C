//
//  main.m
//  namesChallenge
//
//  Created by Kyle Chew on 9/6/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // read in the word file
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        // break it into an array of names
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        NSInteger matchCount = 0;
        
        for (NSString *name in names) {
            
            // lower case
            NSString *lowerCaseName = [name lowercaseString];
            
            // find the match!
            if ([words containsObject:lowerCaseName]) {
                matchCount++;
                NSLog(@"%@", name);
            }
            
            // Look for the string "aa" in a case-insensitive manner
            //NSRange r = [n rangeOfString:@"w" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            /*
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
            */
        }
        
        NSLog(@"Total matches: %ld", (long)matchCount);
        
    }
    return 0;
}
