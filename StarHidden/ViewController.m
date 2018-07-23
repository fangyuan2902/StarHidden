//
//  ViewController.m
//  StarHidden
//
//  Created by yuanfang on 2018/7/23.
//  Copyright © 2018年 yuanfang. All rights reserved.
//

#import "ViewController.h"
#import "StringUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString*str = @"1234 5678 3566 9899 890";
    
    NSLog(@"%@",
          [StringUtil createHiddenString:str formIndex:2]);
    NSLog(@"%@",
          [StringUtil createHiddenString:str toIndex:15]);
    NSLog(@"%@",
          [StringUtil createHiddenString:str formIndex:2 toIndex:15]);
    NSLog(@"%@",
          [StringUtil createHiddenString:str formIndex:4 toIndex:15 replaceCount:10]);
     NSLog(@"%@",
          [StringUtil createHiddenString:str formIndex:4 toIndex:str.length - 4 replaceSpace:YES]);
     NSLog(@"%@",
          [StringUtil createHiddenString:str formIndex:4 toIndex:str.length - 4 replaceSpace:NO ]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
