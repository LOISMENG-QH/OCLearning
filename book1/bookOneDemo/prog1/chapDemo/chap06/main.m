//
//  main.m
//  chap06
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//
/*  1.确定一年是否是闰年
    2.选择结构
    3.输入
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year, rem_4, rem_100, rem_400;
        
        NSLog(@"Enter the year to be tested:");
        scanf("%i", &year);
        
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        
//        逻辑判断
        if( ( rem_4 == 0 && rem_100 != 0) || (rem_400 == 0)){
            NSLog(@"It's a leap year”);
        }else{
            NSLog(@"Nope, It's not a leap year”)
        }
    }
    return 0;
}
