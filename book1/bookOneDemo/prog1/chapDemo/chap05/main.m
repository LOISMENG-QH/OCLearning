//
//  main.m
//  chap05
//
//  Created by starryeve on 2023/5/18.
//  Copyright © 2023 loismeng. All rights reserved.
//
/*循环结构*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n = 11;
        //        字段宽度说明 %2i 这个整数占两列
        NSLog(@"%i %i %i", n, n, n);
        NSLog(@"%i%i%i", n, n, n);

        for(int i = 0; i < n; i++){
            NSLog(@"%2i %i", i, i);
        }
        
//        键盘输入 1.C风格的字符串 不用@ 2.加& 制定输入的值存储在a哪里
        int number;
        char c;
        scanf("%i", &number);
        NSLog(@"scanf: %i", number);
//        在格式化i字符%cj前插入一个空格 可以让scanfg跳过输入中的空白字符（回车 换行 制表符 换行符
        scanf(" %c", &c);
        NSLog(@"scanf: %c", c);

    }
    return 0;
}
