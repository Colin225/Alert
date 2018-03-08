//
//  ViewController.m
//  Alert
//
//  Created by Chunlin on 16/5/27.
//  Copyright © 2016年 com.putao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"分享" message:@"123" preferredStyle:UIAlertControllerStyleAlert];
    
    // 弹出框标题文字样式
    NSMutableAttributedString *topTitle = [[NSMutableAttributedString alloc] initWithString:@"分享到"];
    [topTitle setAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18.0], NSForegroundColorAttributeName:[UIColor purpleColor]}
                     range:NSMakeRange(0, 3)];
    [ac setValue:topTitle forKey:@"attributedTitle"];
    
    // 弹出框message
    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@"选择分享对象"];
    [message setAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16.0], NSForegroundColorAttributeName:[UIColor orangeColor]}
                     range:NSMakeRange(0, 6)];
    [ac setValue:message forKey:@"attributedMessage"];
    
    // 好友头像事件
    UIAlertAction *friend = [UIAlertAction actionWithTitle:@"好友头像" style:UIAlertActionStyleDefault handler:nil];
    UIImage *friendImg = [[UIImage imageNamed:@"ani_loading_screw"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [friend setValue:friendImg forKey:@"image"];
    [friend setValue:[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.6] forKey:@"titleTextColor"];

    // 朋友圈事件
    UIAlertAction *circle = [UIAlertAction actionWithTitle:@"分享到朋友圈" style:UIAlertActionStyleDefault handler: nil];
    UIImage *circleImg = [[UIImage imageNamed:@"icon_16_03"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [circle setValue:circleImg forKey:@"image"];
    [circle setValue:[UIColor colorWithRed:1.0 green:0.5 blue:0.3 alpha:0.6] forKey:@"titleTextColor"];
    
    [ac addAction:friend];
    [ac addAction:circle];
    
//    ac.view.tintColor = [UIColor brownColor];
    
    [self presentViewController:ac animated:YES completion:nil];
    
//    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
//    [rootVC presentViewController:ac animated:YES completion:nil];
}

@end
