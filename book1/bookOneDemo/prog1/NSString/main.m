//
//  main.m
//  NSString
//
//  Created by starryeve on 2023/5/22.
//  Copyright © 2023 loismeng. All rights reserved.
//
//字符串的使用

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
//        保存比较结果
        NSComparisonResult compareResult;
//        结构typedef定义 包含location length两个成员
        NSRange subRange;
//        可变字符串
        
//        计算字符串中的字符 length的类型定义就是NSUInteger
        NSLog(@"Length of str1: %lu", [str1 length]);
        
//        将字符串复制到领一个字符串 这个是个类方法！噢噢噢噢
//        这里的复制是字符串内容的赋值 区分于str1=str2是内存对同一字符串的引用
        res = [NSString stringWithString: str1];
        NSLog(@"copy: %@", res);
        
//        将一个字符串复制到另一个字符串的末尾
        str2 = [str1 stringByAppendingString: str2];
        NSLog(@"Concatentation: %@", str2);
        
//        验证两个字符串是否相等
        if ([str1 isEqualToString: res] == YES){
            NSLog(@"str1 == res");
        }else{
            NSLog(@"str1 != res");
        }
        
//        验证两个字符串比较结果
        compareResult = [str1 compare: str2];
        
        if(compareResult == NSOrderedAscending){
            NSLog(@"str1 < str2");
        }else if(compareResult == NSOrderedDescending){
            NSLog(@"str 1 > str2");
        }else{
            NSLog(@"str1 == str2");
        }
        
//        字符串转换成大写
        res = [str1 uppercaseString];
//        字符串转换成小写
        res = [str2 lowercaseString];
//        这里返回的是const char*
        NSLog(@"upper or lower: %s", [res UTF8String]);
        
//        从字符中提取前3个字符
        res = [str1 substringToIndex: 3];
        NSLog(@"First 3 chars of str1: %@", res);
        
//        索引5开始到结尾
        res = [str1 substringFromIndex: 5];
        NSLog(@"Chars from index 5 of str1: %@", res);
        
//        范围查询 8-13
        res = [[str1 substringFromIndex: 8] substringToIndex:5];
        res = [str1 substringWithRange: NSMakeRange(8, 6)];
        
//        查找子字符串
//        得到range 可以通过 subRange.location获得 （结构）
        subRange = [str1 rangeOfString: @"String A"];
        
        
    }
    return 0;
}
