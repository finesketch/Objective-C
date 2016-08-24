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
#import <readline/readline.h> // readline, part of atoi library
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

void loop()
{
    printf("\n");
    printf("Loop\n");
    printf("**************************\n");
    
    int i = 0;
    while (i < 5)
    {
        printf("%d. Aaron is Cool\n", i);
        i++;
    }
    
    for (int i = 0; i < 5; i++)
    {
        printf("%d. Aaron is Cool.\n", i);
    }
    
    for (i = 0; i < 12; i++)
    {
        printf("Checking i = %d\n", i);
        if (i + 90 == i * i)
        {
            break;
        }
    }
    printf("The answer is %d.\n", i);
    
    for (i = 0; i < 12; i++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("2nd Checking i = %d\n", i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("The answer is %d.\n", i);
    
    do {
        printf("%d. (do - while) Aaron is Cool\n", i);
        i++;
    } while (i < 12);
    
    // add atoi library!!!
    printf("Who is cool?\n");
    // uncomment below 2 lines!
    //const char *name = readline(NULL);
    //printf("%s is the coolest!\n\n", name);
    
    int num = atoi("a");
    printf("atoi number is %d\n", num);
}

void addressPointer()
{
    printf("\n");
    printf("Address Pointer\n");
    printf("**************************\n");
    
    int i = 17;
    printf("i stores its value at %p\n", &i);
    printf("this addressPointer function starts at %p\n", addressPointer);
    
    int *addressOfi = &i;
    int *addressOfaddressPointer = &addressPointer;
    printf("addressOfi value is %d\n", addressOfi);
    printf("addressOfaddressPointer value is %d\n", addressOfaddressPointer);
    printf("i atores its value at %p\n", addressOfi);
    
    // size of the memory address and datatype
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    printf("An int is %zu bytes\n", sizeof(i));
    printf("A pointer is %zu bytes\n", sizeof(addressOfi));
    
    // NULL
    float *myPointer;
    if (myPointer) {
        printf("not NULL\n");
    }
    else {
        printf("NULL\n");
    }
    
    float actualGravity;
    float *measureGravityPtr = NULL;
    if (measureGravityPtr) {
        actualGravity = *measureGravityPtr;
    }
    else {
        //actualGravity = estimatedGravity(planetRadius);
    }
}

void passByReference()
{
    printf("\n");
    printf("Pass by Reference\n");
    printf("**************************\n");
    
    double pi = 3.1444444;
    double integerPart;
    double fractionPart;
    
    // Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
}

// Here is the declaration of the struct
struct Person {
    float heightInMeters;
    int weightInKilos;
};

float bodyMassIndex(struct Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.weightInKilos);
}

void structs()
{
    printf("\n");
    printf("Structs\n");
    printf("**************************\n");
    
    struct Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    struct Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    
}

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person1;

float bodyMassIndex1(Person1 *person)
{
    return person->weightInKilos / (person->heightInMeters * person->heightInMeters);
}

void theHeap()
{
    printf("\n");
    printf("Heap\n");
    printf("**************************\n");
    
    // declare a pointer
    float *startOfBuffer;
    
    // Ask to use some bytes from the heap
    startOfBuffer = malloc(1000 * sizeof(float));
    
    // ... use the buffer here ...
    
    // relinquish your clain on the memory so it can be reused
    free(startOfBuffer);
    
    // Forget where the memory is
    startOfBuffer = NULL;
    
    // ************************************
    
    // Allocate memory for one Person struct
    Person1 *mikey = (Person1 *)malloc(sizeof(Person1));
    
    // Fill in two members of the struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    // Print out the BMI of the original Person1
    float mikeyBMI = bodyMassIndex1(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    // Let the memory be recyced
    free(mikey);
    
    // Forget where it was
    mikey = NULL;
    
}



// ---------------------------------------------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("this 'main' function starts at %p\n", main);
        
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
        
        loop();
        
        addressPointer();
        
        passByReference();
        
        structs();
        
        theHeap();
        
        return EXIT_SUCCESS;
    }
}


