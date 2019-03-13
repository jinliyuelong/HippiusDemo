//
//  HippiusDemoMeator.m
//  Hippius
//
//  Created by Liyanjun on 2019/3/13.
//  Copyright © 2019 HAND. All rights reserved.
//

#import "HippiusDemoMeator.h"
#import "HippiusDemoViewController.h"
#import "HippiusDemoGlobalSeting.h"

@implementation HippiusDemoMeator
- (UIViewController*)ctl{
    return [[HippiusDemoViewController alloc] init];
}

- (id)getGlobalSetting{
    return  [HippiusDemoGlobalSeting shareInstance];
}
@end
