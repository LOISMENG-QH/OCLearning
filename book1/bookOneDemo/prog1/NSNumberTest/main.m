//
//  NSNumberTest.m
//  prog1
//
//  Created by starryeve on 2023/5/22.
//  Copyright © 2023 loismeng. All rights reserved.
//

//使用Number
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
//        ①用numberWith方法h创建数字对象 ②用@表达式创建对象
        
//        Integer 型值
//        intNumber = @100;
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);
        
//        long型 16进制？
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
//        char型值
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);
        
//        float
//        floatNumber = @100.0f;
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
//        duoble
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
//        发生错误
        NSLog(@"%li", (long) [myNumber integerValue]);
        
//        验证两个Number是否相等
        if([intNumber isEqualToNumber: floatNumber] == YES){
            NSLog(@"Numbers are equal");
        }else{
            NSLog(@"Numbers are not equal");
        }
        
//      比较两个数大小
        if([intNumber compare: myNumber] == NSOrderedAscending){
            NSLog(@"First number is less than second");
        }
            
        
        
        
    }
    return 0;
}
