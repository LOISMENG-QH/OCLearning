//
//  main.m
//  NSSetTest
//
//  Created by starryeve on 2023/5/23.
//  Copyright © 2023 loismeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//使用Printing类别，将打印方法添加到NSSet

//继承实现接口？
@interface  NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)
-(void) print {
    printf("{ ");
//    in self? 所用的NSSet
    for (NSNumber *element in self) {
        printf(" %li ", (long) [element integerValue]);
    }
    printf("} \n");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @5, @10, nil];
//        set不可有重复元素
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @3, @5, @10, nil];
        NSSet *set2 = [NSSet setWithObjects:@-5, @100, @3, @5, nil];
        NSSet *set3 = [NSSet setWithObjects:@12, @200, @3, nil];
        
        NSLog(@"set1: ");
        [set1 print];
        NSLog(@"set2: ");
        [set2 print];
        
//        相等性测试
        if ([set1 isEqualToSet: set2] == YES) {
            NSLog(@"set1 equals set2");
        }else{
            NSLog(@"set1 is not equal to set2");
        }
        
//        成员测试
        if ([set1 containsObject: @10] == YES){
            NSLog(@"set1 contains 10");
        }else{
            NSLog(@"set1 is not contains 10");
        }
        
        if ([set2 containsObject: @10] == YES){
            NSLog(@"set2 contains 10");
        }else{
            NSLog(@"set2 is not contains 10");
        }
        
//        可变集合set1中添加和移除对象
        [set1 addObject: @4];
        [set1 removeObject: @10];
        NSLog(@"set1 after adding 4 and removing 10: ");
        [set1 print];
        
//        两个集合的交集 运算的结果会取代消息的接受者！
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];
        
        [set1 unionSet: set2];
        NSLog(@"set1 union set2: ");
        [set1 print];
        
    }
    return 0;
}
