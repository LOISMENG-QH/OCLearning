//
//  Calculator.h
//  prog1
//
//  Created by starryeve on 2023/5/21.
//  Copyright © 2023 loismeng. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h


#endif /* Calculator_h */

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
//累加
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//算数方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add:(double)value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

@end
