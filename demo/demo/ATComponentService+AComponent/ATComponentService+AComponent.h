//
//  ATComponentService+AComponent.h
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import <ATComponentService/ATComponentService.h>
#import "AComponentDefine.h"

@interface ATComponentService (AComponent)

+ (void)a_asyncGetAppVersionWithPrefix:(NSString *)prefix callback:(void(^)(NSString *appVersion))callback;

@end
