//
//  main.m
//  Prog6.8
//
//  Created by admin on 11/28/17.
//  Copyright © 2017 admin. All rights reserved.
//
//--------------------------------------
// Program to evaluate simple expressions of the form number operator number
// Implement a Calculator class
#import <Foundation/Foundation.h>
@interface Calculator : NSObject
{
    double accumulator;
}
// Accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
// Arithmetic methods
-(void) add: (double) value;
-(void) subtruct: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;


@end

@implementation Calculator

-(void) setAccumulator:(double)value
{
    accumulator =value;
    
}

-(void) clear
{
    accumulator=0;
}
-(double) accumulator
{
    return accumulator;
}

-(void) add:(double)value
{
    accumulator+=value;
}
-(void) subtruct:(double)value
{
    accumulator-=value;
    
}
-(void) multiply:(double)value

{
    accumulator*=value;
}
-(void) divide:(double)value
{
    accumulator/=value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // in/NSLog(@"Hello, World!");
        
        
        double value1, value2;
        char operator;
        Calculator *myCalculator = [[Calculator alloc] init]  ;
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf",&value1,&operator,&value2);
        [myCalculator setAccumulator:value1];
        if (operator=='+')
            [myCalculator add:value2];
        else if( operator=='-')
            [myCalculator subtruct:value2];
        else if (operator=='*')
            [myCalculator multiply:value2];
        else if (operator=='/')
            [myCalculator divide:value2];
        NSLog(@"%.2f",[myCalculator accumulator]);
    }
    return 0;
}
