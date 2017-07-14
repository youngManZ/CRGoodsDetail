//
//  ZTOrderViewController.h
//  ZTOrderServerProvide
//
//  Created by nrh on 2017/7/13.
//  Copyright © 2017年 zt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZTOrderViewController : UIViewController

- (UIViewController *) initWithGoodsID : (NSString *) goodID block : (dispatch_block_t) block;

@end
