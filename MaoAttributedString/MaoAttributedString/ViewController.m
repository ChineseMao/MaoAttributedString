//
//  ViewController.m
//  MaoAttributedString
//
//  Created by 毛韶谦 on 16/8/19.
//  Copyright © 2016年 毛韶谦. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *myFirstLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 100, 300, 30)];
    [self.view addSubview:myFirstLabel];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"MaoAttributedString蓝翔技校" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    [attributedString addAttributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor blueColor]} range:NSMakeRange(0, 2)];
    [attributedString addAttributes:@{NSStrikethroughStyleAttributeName:@(9)} range:NSMakeRange(2, 5)];
    [attributedString addAttributes:@{NSStrikethroughStyleAttributeName:@(2),NSStrikethroughColorAttributeName:[UIColor greenColor]} range:NSMakeRange(9, 3)];
    [attributedString addAttributes:@{NSStrokeColorAttributeName:[UIColor orangeColor],NSStrokeWidthAttributeName:@(2),NSFontAttributeName:[UIFont systemFontOfSize:30]} range:NSMakeRange(13, 4)];
    [attributedString addAttributes:@{NSStrokeColorAttributeName:[UIColor orangeColor],NSStrokeWidthAttributeName:@(-2),NSFontAttributeName:[UIFont systemFontOfSize:25]} range:NSMakeRange(17, 3)];
    
    myFirstLabel.attributedText = attributedString;
    
    UITextField *myFirstTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 200, 300, 30)];
    [self.view addSubview:myFirstTextField];
    
    
    UITextView *myFirstTextView = [[UITextView alloc] initWithFrame:CGRectMake(60, 300, 300, 30)];
    [self.view addSubview:myFirstTextView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
