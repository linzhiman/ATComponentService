//
//  ATComponentService+MainComponent.m
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATComponentService+MainComponent.h"
#import "MainComponentDefine.h"

@implementation ATComponentService (MainComponent)

+ (NSString *)main_getAppNameWithPrefix:(NSString *)prefix
{
    NSDictionary *callArgument = @{Component_Main_getAppName_prefix:prefix};
    NSDictionary *callResult = [ATComponentService callComponentWithName:Component_Main_name command:Component_Main_getAppName argument:callArgument];
    if ([ATComponentService hasError:callResult]) {
        return @"";
    }
    return callResult[Component_Main_defaultKey1];
}

+ (void)main_asyncGetAppVersionWithPrefix:(NSString *)prefix callback:(void(^)(NSString *appVersion))callback
{
    NSDictionary *callArgument = @{Component_Main_asyncGetAppVersion_prefix:prefix};
    [ATComponentService callComponentWithName:Component_Main_name command:Component_Main_asyncGetAppVersion argument:callArgument callback:^(NSString *command, NSDictionary *argument) {
        ATSafetyCallblock(callback, argument[Component_Main_defaultKey1])
    }];
}

@end
