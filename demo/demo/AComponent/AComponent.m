//
//  AComponent.m
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "AComponent.h"
#import <ATComponentService/ATComponentService.h>
#import "ComponentInterface.h"
#import "ATGlobalMacro.h"

ATConstStringDefineWithDefaultValue(Component_A_name)
ATConstStringDefineWithDefaultValue(Component_A_defaultKey1)
ATConstStringDefineWithDefaultValue(Component_A_defaultKey2)

ATConstStringDefineWithDefaultValue(Component_A_asyncGetAppVersion)
ATConstStringDefineWithDefaultValue(Component_A_asyncGetAppVersion_prefix)

@implementation AComponent

ATComponentBaseImplementationBegin(Component_A_name)

ATComponentBaseImplementationHandlerWithCommandBegin(Component_A_asyncGetAppVersion)
{
    NSString *prefix = argument[Component_A_asyncGetAppVersion_prefix];
    [ATComponentService main_asyncGetAppVersionWithPrefix:prefix callback:^(NSString *appVersion) {
        ATSafetyCallblock(callback, @{Component_A_defaultKey1:appVersion})
    }];
    callResult = @{};
}
ATComponentBaseImplementationHandlerWithCommandEnd

ATComponentBaseImplementationEnd

@end
