//
//  main.m
//  02CrashTask
//
//  Created by 蒙秋华 on 2023/6/4.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        1.对一个对象发不响应的消息 编译器会有提示
        NSString *str = @"测试crash";
//        NSLog(@"%tu", [str len]);
        
        
//        2.对一个不存在的对象发消息 编译器会有提示
//        NSLog(@"%tu", [str1 length]);
        
        
//        3.空参数异常 nil argument
        @try {
            NSString *Str = nil;
    //        NSString *Str = @"0";
            NSMutableString *mStr = [[NSMutableString alloc] initWithString:Str];
            mStr = [NSMutableString stringWithString:Str];
            [mStr appendString:Str];
            [mStr stringByAppendingString:Str];
            [mStr insertString:Str atIndex:0];
            [mStr insertString:@"s" atIndex:1];
            [mStr appendString:@"0123"];
            
            //        4.字符串越界错误
            [mStr deleteCharactersInRange:NSMakeRange(9, 0)];
            [mStr deleteCharactersInRange:NSMakeRange(4, 0)];
            [mStr deleteCharactersInRange:NSMakeRange(4, 1)];
            [mStr deleteCharactersInRange:NSMakeRange(3, 2)];
        } @catch (NSException *exception) {
            NSLog(@"空参数异常");
            NSLog(@"字符串操作越界异常");
        }
        
        

        
//        数组越界异常
        @try {
            NSArray *arr = @[@0, @1, @2, @3];
            NSLog(@"%@",[arr objectAtIndex:@5]);
        } @catch (NSException *exception) {
            NSLog(@"数组越界异常");
        }
        
        NSObject *obj = nil;
        
//        5.数组插入空对象 attempt to insert nil object from objects[2]'
        @try {
            NSArray *ar = @[@0,@1,obj,@3];
            NSLog(@"%@",ar);
        } @catch (NSException *exception) {
            NSLog(@"数组插入空对象异常");
        }
    }
    return 0;
}
