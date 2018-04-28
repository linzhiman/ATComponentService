//
//  ATComponentBase.m
//  AppTemplateLib
//
//  Created by linzhiman on 2017/7/3.
//  Copyright © 2017年 zhiniu. All rights reserved.
//

#import "ATComponentBase.h"

@implementation ATComponentBase

+ (void)registerComponent
{
    NSAssert(0, @"Should implement registerComponent");
}

+ (id<ATComponentProtocol>)at_createComponentInstance
{
    NSAssert(0, @"Should implement at_createComponentInstance");
    return nil;
}

- (NSDictionary *)at_callComponentWithCommand:(NSString *)command argument:(NSDictionary *)argument ATComponentArgument_Callback
{
    NSAssert(0, @"Should implement at_callComponentWithCommand:argument:callback:");
    return nil;
}

@end
