//
//  main.m
//  BigNerdRanchBook
//
//  Created by Kyle Chew on 8/20/16.
//  Copyright © 2016 FineSketch. All rights reserved.
//

#import <stdio.h> // default standard library
#import <unistd.h> // additional default standard library (for sleep(s))
#import <stdlib.h>
#import <math.h> // maths, sin
#import <Foundation/Foundation.h>

// Global variables or static
static float lastTemperature;

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

void showCookTimeForTurkey(int pounds)
{
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
    
    if (necessaryMinutes > 120)
    {
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halfway, necessaryMinutes);
    }
}

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0)
    {
        printf("There are simply no more bottles of beer on the wall.\n\n");
    }
    else
    {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("take one down, pass it around, %d bottles of beer on the wall. \n\n", oneFewer);
        singSongFor(oneFewer); // call itself
        
        printf("Put a bottles in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

float fahrenheitFromCelsius(float celsius)
{
    lastTemperature = celsius;
    
    float fahrenheit = celsius * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", celsius, fahrenheit);
    
    return  fahrenheit;
}


float average(float a, float b, float c)
{
    return (a + b + c) / 3;
    printf("The mean justifies the end.\n"); // never execute.
}

void stringFunction()
{
    printf("\n");
    printf("String\n");
    printf("**************************\n");
    
    char *firstLine = "It was the best of times.\n";
    char *secondLine = "It was the worst of times.\n";
    
    printf(firstLine);
    printf(secondLine);
}

void workWithNumbers()
{
    printf("\n");
    printf("Integer\n");
    printf("**************************\n");
    
    int x = 255;
    printf("x is %d.\n", x);
    printf("In octal, x is %o.\n", x);
    printf("In hexadecimal, x is %x.\n", x);
    
    long y = 2550000000000;
    printf("y is %ld.\n", y);
    printf("In octal, y is %lo. \n", y);
    printf("In hexadecimal, y is %lx.\n", y);
    
    unsigned long z = 25500000000000000;
    printf("z is %lu.\n", z);
    
    // Octal and hex already assume the number was unsigned
    printf("In octal, z is %lo.\n", z);
    printf("In hexadecimal, z is %lx.\n", z);
    
    // Integer operation
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d\n", 11 / 3);
    printf("11 / 3 = %d remainder of %d\n", 11 / 3, 11 % 3);
    printf("11 / 3.0 = %f\n", 11 / (float)3);
    printf("The absolute value of -5 is %d\n", abs(-5));

    NSInteger xx = -5;
    NSUInteger yy = 6;
    printf("Here they are: %ld, %lu.\n", (long)xx, (unsigned long)yy);
    
    int xxx = 5;
    xxx++;
    xxx--;
    printf("The xxx final value is %d\n", xxx);
    
    double a = 12345.6789;
    printf("a is %f(floating point)\n", a);
    printf("a is %e (scientific notation)\n", a);
    printf("a is %.2f\n", a);
    printf("a is %.2e\n", a);
    
    double b = 1.0;
    double c = sin(b);
    printf("sin(c) is %f\n", c);
}

// ---------------------------------------------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //printf("Kate has done as much Cocoa Programming as I could fit into days.\n");
        //printf("Bo has done as much Objective-C Programming as I could fit into 2 days.\n");
        //printf("Mike has done as much Python programming as I could fit into 5 days.\n");
        //printf("Liz has done as much iOS Programming as I could fit into 5 days.\n");
        
        congratulateStudent("Kate", "Cocoa", 5);
        congratulateStudent("Bo", "Objective-C", 2);
        congratulateStudent("Mike", "Python", 5);
        congratulateStudent("Liz", "iOS", 5);
        sleep(1);
        
        int totalWeight = 10;
        int gibletsWeight = 1;
        int turkeyWeight = totalWeight - gibletsWeight;
        showCookTimeForTurkey(turkeyWeight);
        
        singSongFor(3);
        
        float freezeInCelsius = 12;
        float freezeInFahrenheit = fahrenheitFromCelsius(freezeInCelsius);
        printf("Water freezes at %f degrees Fahrenheit.\n", freezeInFahrenheit);
        printf("The last temperature converted was %f.\n", lastTemperature);
        
        printf("The average of three numbers is %f.\n", average(133, 67656, 467988));
        
        stringFunction();
        
        workWithNumbers();
        
        return EXIT_SUCCESS;
    }
}


