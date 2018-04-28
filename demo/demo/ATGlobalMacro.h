//
//  ATGlobalMacro.h
//  apptemplate
//
//  Created by linzhiman on 4/30/15.
//  Copyright (c) 2015 apptemplate. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ATStringFromObjectName(atName) @#atName

//NSString

#define ATConstStringDefine(atName, atValue) \
    NSString * const atName = atValue;

#define ATConstStringDefineWithDefaultValue(atName) \
    ATConstStringDefine(atName, @#atName)

#define ATConstStringExtern(atName) \
    extern NSString * const atName;

//Block
#define ATSafetyCallblock(block, ...) if((block)) { block(__VA_ARGS__); }