//
//  ZTOrderViewController.m
//  ZTOrderServerProvide
//
//  Created by nrh on 2017/7/13.
//  Copyright © 2017年 zt. All rights reserved.
//

#import "ZTOrderViewController.h"

@interface ZTOrderViewController ()

@property(nonatomic,assign) dispatch_block_t      block;

@end

@implementation ZTOrderViewController

- (UIViewController *)initWithGoodsID:(NSString *)goodID block:(dispatch_block_t)block{

    if (self = [super init]) {
        
        _block = block;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor redColor]];
    
    UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [sureBtn setFrame:CGRectMake(100, 300, 80, 20)];
    [sureBtn setTitle:@"确认订单" forState:UIControlStateNormal];
    [sureBtn addTarget:self action:@selector(action_sureBtnClickEvent) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sureBtn];
}

- (void)action_sureBtnClickEvent {

    [self dismissViewControllerAnimated:YES completion:nil];
    _block();
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [super touchesBegan:touches withEvent:event];
    [self dismissViewControllerAnimated:YES completion:nil];
    _block();
}

@end
