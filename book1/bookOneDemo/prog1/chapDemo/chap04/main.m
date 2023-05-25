//
//  main.m
//  chap1
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//
/*
1.格式字符串 %i
2.运算
3.数据类型转换
*/
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int sum;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        int i1 = -150;
        float float1;
        
        sum = 50 + 25;
//        格式字符串中的空格表示输入中允许存在任意个数的空格
        
        NSLog(@"Hello, World!");
//        百分号特殊字符 紧跟在后面的字符指定显示的值类型
        NSLog(@"显示变量的值：");
//        int整型
//        NSLog(@"Show data of type int: %i", sum);
        NSLog(@"Show data of type int(i): %i", sum);
//        %f 浮点型 保留小数点后六位
        NSLog(@"Show data of type float(f): %f", floatingVar);
//        %e 双精度浮点型 小数点左边一位 右边6位 用科学计数法表示
        NSLog(@"Show data of type double(e): %e", doubleVar);
//        %g 双精度浮点型 但是对数字表示方式无要求 数字e很大的时候会采用指数形式
        NSLog(@"Show data of type double(g): %g", doubleVar);
//        %c 字符型
        NSLog(@"Show data of type char(c): %c", charVar);
        
//      整数除以浮点数
        NSLog(@"%i devided by 100.0 produces %f", i1, i1/100.0);
//        类型强制转换运算符
        NSLog(@"(float) %i divided by 100 produces %f", i1, (float) i1/100);
//        保留两位小数
        NSLog(@"(1f c 1f: %.2f:", doubleVar);
//          整型s最少显示两位字符
        NSLog(@"%.2i", 1);
        
//        测试一下calculator类
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200.0];
        [deskCalc divide: 15.0];
        [deskCalc subtract: 10.0];
        [deskCalc multiply: 5];
        NSLog(@"The Calculator result is %g", [deskCalc accumulator]);
    }
    return 0;
}
