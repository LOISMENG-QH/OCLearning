//
//  ViewController.m
//  02QQLogin
//
//  Created by 蒙秋华 on 2023/6/23.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)Login;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)Login {
//    获取变量
    NSString *uname = self.username.text;
    NSString *strPassword = self.password.text;
//    打印
    NSLog(@"username: %@", uname);
    NSLog(@"password: %@", strPassword);
    
//    退出键盘
    [self.view endEditing:YES];
}
@end
