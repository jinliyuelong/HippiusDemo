//
//  HippiusDemoGlobalSeting.m
//  Hippius
//
//  Created by Liyanjun on 2019/3/13.
//  Copyright © 2019 HAND. All rights reserved.
//

#import "HippiusDemoGlobalSeting.h"
#import "HippiusBaseLib.h"

@implementation HippiusDemoGlobalSeting
+ (instancetype)shareInstance{
    static HippiusDemoGlobalSeting *g_setting = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:kBundleName ofType:@"bundle"];
        NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
        NSString *filePath = [bundle pathForResource:@"customStyle" ofType:@"plist"];
        NSDictionary *setDic = [NSDictionary dictionaryWithContentsOfFile:filePath];
        NSArray *funtionArray = [setDic valueForKey:@"function"];
        [funtionArray enumerateObjectsUsingBlock:^(NSDictionary*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj[@"extra"][@"iOSPodCode"]  isEqualToString:@"HippiusDemo"]) {
                NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:obj];
                NSDictionary *params = obj[@"params"];
                dic[@"displayName"] = params[@"displayName"];
                dic[@"discription"] = params[@"discription"];
                dic[@"selectIcon"] = params[@"selectIcon"];
                dic[@"unselectIcon"] = params[@"unselectIcon"];
                dic[@"hippiusmoduledemo_str1"] = params[@"hippiusmoduledemo_str1"];
                dic[@"hippiusmoduledemo_str2"] = params[@"hippiusmoduledemo_str2"];
                dic[@"hippiusmoduledemo_color1"] = params[@"hippiusmoduledemo_color1"];
                dic[@"hippiusmoduledemo_color2"] = params[@"hippiusmoduledemo_color2"];
                dic[@"hippiusmoduledemo_img_1"] = params[@"hippiusmoduledemo_img_1"];
                dic[@"hippiusmoduledemo_checkbox_area"] = params[@"hippiusmoduledemo_checkbox_area"];
                dic[@"hippiusmoduledemo_radio_area"] = params[@"hippiusmoduledemo_radio_area"];
                dic[@"hippiusmoduledemo_textarea1"] = params[@"hippiusmoduledemo_textarea1"];
                g_setting = [HippiusDemoGlobalSeting mj_objectWithKeyValues:dic];
                *stop = YES;
            }
        }];
    });
    return g_setting;
}


@end
