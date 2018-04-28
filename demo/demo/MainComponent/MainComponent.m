//
//  MainComponent.m
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "MainComponent.h"
#import <ATComponentService/ATComponentService.h>
#import "ATGlobalMacro.h"

ATConstStringDefineWithDefaultValue(Component_Main_name)
ATConstStringDefineWithDefaultValue(Component_Main_defaultKey1)
ATConstStringDefineWithDefaultValue(Component_Main_defaultKey2)

ATConstStringDefineWithDefaultValue(Component_Main_getAppName)
ATConstStringDefineWithDefaultValue(Component_Main_getAppName_prefix)

ATConstStringDefineWithDefaultValue(Component_Main_asyncGetAppVersion)
ATConstStringDefineWithDefaultValue(Component_Main_asyncGetAppVersion_prefix)

@implementation MainComponent

ATComponentBaseImplementationBegin(Component_Main_name)

ATComponentBaseImplementationHandlerWithCommandBegin(Component_Main_getAppName)
{
    NSString *prefix = argument[Component_Main_getAppName_prefix];
    NSString *appName = [NSString stringWithFormat:@"%@-demo", prefix];
    callResult = @{Component_Main_defaultKey1:appName};
}
ATComponentBaseImplementationHandlerWithCommandEnd

ATComponentBaseImplementationHandlerWithCommandBegin(Component_Main_asyncGetAppVersion)
{
    NSString *prefix = argument[Component_Main_asyncGetAppVersion_prefix];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSString *appVersion = [NSString stringWithFormat:@"%@-1.0.0", prefix];
        ATSafetyCallblock(callback, Component_Main_asyncGetAppVersion, @{Component_Main_defaultKey1:appVersion})
    });
    
    callResult = @{};
}
ATComponentBaseImplementationHandlerWithCommandEnd

ATComponentBaseImplementationEnd

@end
