//
//  ViewController.m
//  demo
//
//  Created by linzhiman on 2017/5/27.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ViewController.h"
#import "ComponentInterface.h"

@interface ViewController ()
{
    NSMutableArray *_labels;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    {{//Test1
        NSString *appName = [ATComponentService main_getAppNameWithPrefix:@"linzhiman-main"];
        [self setLabelText:appName index:0];
    }}
    
    {{//Test2
        [self setLabelText:@"获取中..." index:1];
        [ATComponentService main_asyncGetAppVersionWithPrefix:@"linzhiman-main" callback:^(NSString *appVersion) {
            [self setLabelText:appVersion index:1];
        }];
    }}
    
    {{//Test3
        [self setLabelText:@"获取中..." index:2];
        [ATComponentService a_asyncGetAppVersionWithPrefix:@"linzhiman-a" callback:^(NSString *appVersion) {
            [self setLabelText:appVersion index:2];
        }];
    }}
    
    {{//Test3
        [self setLabelText:@"获取中..." index:3];
        NSString *urlString = [NSString stringWithFormat:@"aScheme://%@/%@?%@=linzhiman-url", Component_A_name, Component_A_asyncGetAppVersion, Component_A_asyncGetAppVersion_prefix];
        NSURL *url = [NSURL URLWithString:urlString];
        [ATComponentService callComponentWithUrl:url callback:^(NSDictionary *argument) {
            if ([[ATComponentService nameFromUrl:url] isEqualToString:Component_A_name]) {
                if ([[ATComponentService commandFromUrl:url] isEqualToString:Component_A_asyncGetAppVersion]) {
                    NSString *appVersion = argument[Component_A_defaultKey1];
                    [self setLabelText:appVersion index:3];
                }
            }
        }];
    }}
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setLabelText:(NSString *)text index:(NSUInteger)index
{
    if (!_labels) {
        _labels = [NSMutableArray new];
    }
    
    UILabel *label = nil;
    
    if (index < _labels.count) {
        label = _labels[index];
    }
    else {
        static int s_index = 0;
        label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100 + 40*s_index++, 300, 30)];
        [self.view addSubview:label];
        [_labels addObject:label];
    }
    
    label.text = text;
}


@end
