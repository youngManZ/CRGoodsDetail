//
//  CRGoodsDetailServiceProtocol.h
//  CRGoodsDetailServiceProtocol
//
//  Created by nrh on 2017/7/12.
//  Copyright © 2017年 zt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CRGoodsDetailServiceProtocol <NSObject>

@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
