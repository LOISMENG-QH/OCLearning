//
//  main.m
//  chap03
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//
/*1.类、对象和方法的创建使用*/
#import <Foundation/Foundation.h>

//----- @interface -----
@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

// @implement部分 ----
@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end

//---- program 部分 ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        3-1代码
//        int numerator = 1;
//        int denominator = 3;
//        NSLog(@"The Fraction is %i/%i", numerator, denominator);
        
//        3-2代码
        
        
        Fraction *myFraction;
//        创建一个分数实例 myFraction = [[Fraction alloc] init];
//        myFraction = [Fraction new]
//        也可以组合在一起 myF'r'a'c
//        为新分数分配内存存储空间 继承自父类的方法 是类方法w哦 保证对象的所有实例变量都变成初始状态
        myFraction = [Fraction alloc];
//      初始化类的实例 是实例方法哦
        myFraction = [myFraction init];
        
//        设置分数为1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
//        打印显示分数
        NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        [myFraction print];
    }
    return 0;
}
