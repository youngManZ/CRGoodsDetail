//
//  ZTOrderServerProvide.m
//  ZTOrderServerProvide
//
//  Created by nrh on 2017/7/13.
//  Copyright © 2017年 zt. All rights reserved.
//

#import "ZTOrderServerProvide.h"
#import <CRProtocolManager/CRProtocolManager.h>
#import <ZTOrderProtocol/ZTOrderProtocol.h>
#import "ZTOrderViewController.h"

@interface ZTOrderServerProvide ()<ZTOrderProtocol>

@end

@implementation ZTOrderServerProvide

+ (void)load {

    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(ZTOrderProtocol)];
}

- (id)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete {

    ZTOrderViewController *ztOrderVC = [[ZTOrderViewController alloc] initWithGoodsID:@"120" block:sureComplete];
    return ztOrderVC;
}

@end
