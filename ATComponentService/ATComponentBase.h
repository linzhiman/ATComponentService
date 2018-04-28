//
//  ATComponentBase.h
//  AppTemplateLib
//
//  Created by linzhiman on 2017/7/3.
//  Copyright © 2017年 zhiniu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATComponentProtocol.h"

@interface ATComponentBase : NSObject<ATComponentProtocol>

+ (void)registerComponent;

@end
