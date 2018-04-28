//
//  ATComponentService+MainComponent.h
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import <ATComponentService/ATComponentService.h>
#import "MainComponentDefine.h"

@interface ATComponentService (MainComponent)

+ (NSString *)main_getAppNameWithPrefix:(NSString *)prefix;

+ (void)main_asyncGetAppVersionWithPrefix:(NSString *)prefix callback:(void(^)(NSString *appVersion))callback;

@end
