//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by nrh on 2017/7/12.
//  Copyright © 2017年 zt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
