//
//  ViewController.m
//  MTGuard
//
//  Created by lucasli on 16/7/23.
//  Copyright © 2016年 msq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self add];
    
}
- (void)add{
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [self.view addSubview:label];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(){
        label.text = @"111";
    });

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
