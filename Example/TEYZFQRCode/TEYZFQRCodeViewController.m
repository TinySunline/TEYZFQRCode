//
//  TEYZFQRCodeViewController.m
//  TEYZFQRCode
//
//  Created by bygd2014@sina.com on 04/25/2017.
//  Copyright (c) 2017 bygd2014@sina.com. All rights reserved.
//

#import "TEYZFQRCodeViewController.h"
#import <TEYZFQRCode/TEYZFQRCode.h>

@interface TEYZFQRCodeViewController ()

@end

@implementation TEYZFQRCodeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TEYZFQRCode *code = [[TEYZFQRCode alloc]init];
    code.frame = CGRectMake(0, 0, 300, 300);
    [code performSelector:@selector(setParam: :) withObject:@"code" withObject:@"11"];
    [self.view addSubview:code];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
