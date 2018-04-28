//
//  ATComponentService.h
//  AppTemplateLib
//
//  Created by linzhiman on 2017/6/21.
//  Copyright © 2017年 zhiniu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATComponentProtocol.h"

@interface ATComponentService : NSObject

+ (BOOL)registerComponentWithName:(NSString *)name withClass:(Class)aClass;
+ (BOOL)unRegisterComponentWithName:(NSString *)name withClass:(Class)aClass;

+ (BOOL)registerComponentWithName:(NSString *)name withObject:(id<ATComponentProtocol>)anObject;
+ (BOOL)unRegisterComponentWithName:(NSString *)name withObject:(id<ATComponentProtocol>)anObject;

+ (NSDictionary *)callComponentWithName:(NSString *)name command:(NSString *)command argument:(NSDictionary *)argument;
+ (NSDictionary *)callComponentWithName:(NSString *)name command:(NSString *)command argument:(NSDictionary *)argument ATComponentArgument_Callback;

+ (BOOL)hasError:(NSDictionary *)callResult;

@end
