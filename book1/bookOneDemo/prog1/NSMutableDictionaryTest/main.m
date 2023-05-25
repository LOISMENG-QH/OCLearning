//
//  main.m
//  NSMutableDictionaryTest
//
//  Created by starryeve on 2023/5/23.
//  Copyright © 2023 loismeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        键值对类型
        NSMutableDictionary *mGlossary = [NSMutableDictionary dictionary];
        
//        存储三个条目在类别中 ①方法定义setObject ②直接赋值
        mGlossary[@"D class"] = @"This is the definition of C";
        [mGlossary setObject:@"A class defined so other classes can inherit from it" forKey: @"abstract class"];
        [mGlossary setObject:@"This is the definition of B" forKey: @"B class"];
        [mGlossary setObject:@"This is the definition of C" forKey: @"C class"];
        
        NSLog(@"abstract class: %@", [mGlossary objectForKey:@"abstract class"]);
        NSLog(@"B class: %@", [mGlossary objectForKey:@"B class"]);
        NSLog(@"C class: %@", [mGlossary objectForKey:@"C class"]);
        NSLog(@"D class: %@", [mGlossary objectForKey:@"D class"]);
        
//        枚举词典（不可变）15-18
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"A class defined so other classes can inherit from it",
                                  @"abstract class",
                                  @"This is the definition of E",
                                  @"E class",
                                  @"This is the definition of F",
                                  @"F class",
                                  @"This is the definition of G",
                                  @"G class",nil];
        NSLog(@"========= NSDictionary =========");
//        顺序是无序的
        for( NSString *key in glossary){
            NSLog(@"%@: %@", key, [glossary objectForKey: key]);
        }
        
//        要有序
        NSLog(@"========= Ordered NSDictionary =========");
        NSArray *keys = [glossary allKeys];
        
        keys = [keys sortedArrayUsingComparator:
                ^(id obj1, id obj2){
            return [obj1 compare: obj2];
        }];
        for( NSString *key in keys){
            NSLog(@"%@: %@", key, [glossary objectForKey: key]);
        }
        
        
    }
    return 0;
}
