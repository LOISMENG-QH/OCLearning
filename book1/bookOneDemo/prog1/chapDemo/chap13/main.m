//
//  main.m
//  chap13
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        数组的定义 如果是引用类型 Fraction *fraction[100]; 要加*号
        int Fibonacci[15], i;
//        数组的初始化， 若有缺少 为0
        int integers[5] = {0, 1, 2, 3, 4};
//        数组的初始化 任意顺序 大小以最大的数字为准 若没有指定会自动根据s元素数目初始化
        int a[] = { [9] = integers[0], [2] = 3, [0] = 1};
//        数组的赋值
        Fibonacci[0] = 0;
        Fibonacci[1] = 1;
        
        //二维数组的定义 实际上内层括号可以省略 将按行进行初始化
//        但是如果只是初始化了一部分的值 就必须要加括号
        int M[4][5] = {
            {10, 5, -3, 17, 82},
            {1, 2, 3, 4, 5},
            {1, 2, 3, 4, 5},
            {1, 2, 3, 4, 5}
        };
        
        
        for(int i = 2; i < 15; ++i){
            Fibonacci[i] = Fibonacci[i-2] + Fibonacci[i-1];
        }
        
        for(int i = 0; i < 15; ++i){
            NSLog(@"%i", Fibonacci[i]);
        }
        
        //块的定义
        void (^printMessage)(void) =
        ^(void){
            NSLog (@"Programming is fun.");
        };
//        块的使用
        printMessage();
        
//        块
        NSLog(@"======块修改h值======");
        __block int foo = 10;
        
        void (^printFoo) (void) =
        ^(void) {
            NSLog(@"foo = %i", foo);
            foo = 20;
        };
        
        foo = 15;
        
        printFoo();
        NSLog(@"foo = %i", foo);
        
        
        //13-13指针和结构
        
        
              
    }
    return 0;
}
