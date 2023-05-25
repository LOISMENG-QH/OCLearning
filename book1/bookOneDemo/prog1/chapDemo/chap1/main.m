//
//  main.m
//  chap1
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//
/*
1.输出NSLog println
2.格式字符串 %i
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int sum;
        
        
        sum = 50 + 25;
        
        NSLog(@"Hello, World!");
//        百分号特殊字符 紧跟在后面的字符指定显示的值类型
//        NSLog(<#NSString * _Nonnull format, ...#>) 会独自出现在一行
        NSLog(@"显示变量的值：");
        //        printf(<#const char *restrict, ...#>) 不会独自出现在一行 可用\n
//        不用NSString 不用@
        printf("%i %i ", 1, 2);
        printf("%i %i", 3, 4);
        printf("\n");
        
        
//        int整型
//        NSLog(@"Show data of type int: %i", sum);
        NSLog(@"Show data of type int: %i", sum);
//

        
    }
    return 0;
}
