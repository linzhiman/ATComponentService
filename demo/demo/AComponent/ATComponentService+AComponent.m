//
//  ATComponentService+AComponent.m
//  demo
//
//  Created by linzhiman on 2017/7/6.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATComponentService+AComponent.h"
#import "AComponentDefine.h"

@implementation ATComponentService (AComponent)

+ (void)a_asyncGetAppVersionWithPrefix:(NSString *)prefix callback:(void(^)(NSString *appVersion))callback
{
    NSDictionary *callArgument = @{Component_A_asyncGetAppVersion_prefix:prefix};
    [ATComponentService callComponentWithName:Component_A_name command:Component_A_asyncGetAppVersion argument:callArgument callback:^(NSString *command, NSDictionary *argument) {
        ATSafetyCallblock(callback, argument[Component_A_defaultKey1])
    }];
}

@end
