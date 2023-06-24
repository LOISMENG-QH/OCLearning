//
//  ViewController.m
//  03ButtonPractice
//
//  Created by 蒙秋华 on 2023/6/23.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)toUp;
- (IBAction)toDown;
- (IBAction)toLeft;
- (IBAction)toRight;
- (IBAction)larger;
- (IBAction)smaller;


@property (weak, nonatomic) IBOutlet UIButton *btnIcon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)smaller {
    //    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
        CGRect originFrame = self.btnIcon.frame;
    originFrame.size.width -= 10;
    originFrame.size.height -= 10;
        self.btnIcon.frame = originFrame;
}

- (IBAction)larger {
    //    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
        CGRect originFrame = self.btnIcon.frame;
    originFrame.size.width += 10;
    originFrame.size.height += 10;
        self.btnIcon.frame = originFrame;
}

- (IBAction)toRight {
    //    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
        CGRect originFrame = self.btnIcon.frame;
        originFrame.origin.x += 10;
        self.btnIcon.frame = originFrame;
}

- (IBAction)toLeft {
    //    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
        CGRect originFrame = self.btnIcon.frame;
        originFrame.origin.x -= 10;
        self.btnIcon.frame = originFrame;
}

- (IBAction)toDown {
    //    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
        CGRect originFrame = self.btnIcon.frame;
        originFrame.origin.y += 10;
        self.btnIcon.frame = originFrame;
}


- (IBAction)toUp {
//    获取按钮的参数 (CGRect是结构定义 规定不能直接修改 要取出来改完再赋值
//    frame是CGRect类型数据
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.y -= 10;
    self.btnIcon.frame = originFrame;
    
}
@end
