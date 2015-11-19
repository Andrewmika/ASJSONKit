//
//  ViewController.m
//  ASJSONKit
//
//  Created by Andrew Shen on 15/11/19.
//  Copyright © 2015年 Andrew Shen. All rights reserved.
//

#import "ViewController.h"
#import "ASJSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *registerDic = [NSDictionary dictionaryWithObjectsAndKeys:@"12314   ",@"_id",@"And\nrew",@"login_name",@"12121212",@"password", nil];
    NSData *srcJSData = [registerDic JSONData];
    NSLog(@"------------------->DATA:%@",srcJSData);

    NSError *error;
    NSString *strJS = [registerDic JSONStringWithWritingOptions:NSJSONWritingPrettyPrinted error:&error];;
    NSDictionary *dict = [strJS objectFromJSONString];
    NSLog(@"------------------->DICT:%@",dict);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
