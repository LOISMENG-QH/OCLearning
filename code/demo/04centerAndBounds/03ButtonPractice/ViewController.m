//
//  ViewController.m
//  03ButtonPractice
//
//  Created by 蒙秋华 on 2023/6/23.
//
//frame(size origin)既能改变大小也能改变位置 center只能改变位置 bounds只能改变大小 transform（大小 位置 旋转）


#import "ViewController.h"

@interface ViewController ()
- (IBAction)move:(UIButton *)sender;
- (IBAction)scale:(UIButton *)sender;



@property (weak, nonatomic) IBOutlet UIButton *btnIcon;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//点击上下左右
- (IBAction)scale:(UIButton *)sender {
    //    用tag值来判断点击的是哪个按钮
        
    //    1.获取原始的frame
        CGRect originFrame = self.btnIcon.frame;
    //    2.修改frame
        switch (sender.tag) {
            case 100:
    //            放大
                originFrame.size.width += 10;
                originFrame.size.height += 10;
                break;
            case 200:
    //            缩小
                originFrame.size.width -= 10;
                originFrame.size.height -= 10;
                break;
            
        }
        
    //    3.重新赋值
        self.btnIcon.frame = originFrame;
}

- (IBAction)move:(UIButton *)sender {
//    用tag值来判断点击的是哪个按钮
    
//    1.获取原始的frame
    CGRect originFrame = self.btnIcon.frame;
//    2.修改frame
    switch (sender.tag) {
        case 10:
//            上
            originFrame.origin.y -= 10;
            break;
        case 20:
//            下
            originFrame.origin.y += 10;
            break;
        case 30:
//            左
            originFrame.origin.x -= 10;
            break;
        case 40:
//            右
            originFrame.origin.x += 10;
            break;
    }
    
//    3.重新赋值
    self.btnIcon.frame = originFrame;
}
@end
