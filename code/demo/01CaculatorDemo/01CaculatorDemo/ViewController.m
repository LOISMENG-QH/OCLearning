//
//  ViewController.m
//  01CaculatorDemo
//
//  Created by 蒙秋华 on 2023/6/23.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)calculate;
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;

@end

@implementation ViewController
//点击按钮的事件
- (void)calculate {
//    1.获取文本值
    NSString *num1 = self.txtNum1.text;
    NSString *num2 = self.txtNum2.text;
    int n1 = num1.intValue;
    int n2 = [num2 intValue];
    
    
//    2.计算和
    int result = n1 + n2;
    
    
//    3.显示值
    _lblResult.text = [NSString stringWithFormat:@"%d", result];
    
//    4.收回键盘
//    第一种方法，让键盘的第一响应者resign（也就是呼叫键盘的对象）
    [self.txtNum1 resignFirstResponder];
    [self.txtNum2 resignFirstResponder];
    
//    第二种方法 当响应者多个的时候 第一种方法很麻烦 可以让当前viewController的所有子view都停止编辑 这个时候所有的键盘都会收回
//    [self.view endEditing:YES];
    
    NSLog(@"calculate--");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
