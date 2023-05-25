//
//  main.m
//  NSArrayTest
//
//  Created by starryeve on 2023/5/23.
//  Copyright © 2023 loismeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"===== 15-7 =====");
//      创建一个数组包含月份的名称
//        ①用NSArray arrayWithObjects方法（结尾要加nil） ②@[elem1, elem2, elem3]
//        NSArray *monthNames = [NSArray arrayWithObjects:@"January", @"February", @"March", @"April", @"May", @"June",@"July", @"August", @"September", @"October", @"November", @"December", nil];
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June",@"July", @"August", @"September", @"October", @"November", @"December"];
        NSLog(@"==== Month Name ====");
//        获得元素[monthNames objectAtIndex:i] ②monthNames[i]
//        存储元素[monthNames
        for(int i = 0; i < [monthNames count]; i++){
//            NSLog(@" %2i    %@", i+1, [monthNames objectAtIndex:i]);
            NSLog(@" %2i    %@", i+1, monthNames[i]);
            
        }
//        [monthNames setValue: @"Jan" forKey:@"0"];
//        [monthNames set]
        
        NSLog(@"===== 15-9 =====");
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
//        存储的是对象 @(i)
        for(i = 0; i < 10; ++i){
            numbers[i] = @(i);
        }
//      逐个遍历数组
        for(i = 0;i < [numbers count]; ++i){
            NSLog(@"%@", numbers[i]);
        }
//        输出整个数组
        NSLog(@"===== Using a single NSLog");
//        末尾添加数据 可变
        [numbers addObject: @(10)];
        NSLog(@"%@", numbers);
        
    }
    return 0;
}
