//
//  ZTOrderProtocol.h
//  ZTOrderProtocol
//
//  Created by nrh on 2017/7/13.
//  Copyright © 2017年 zt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ZTOrderProtocol <NSObject>

@required;
- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
