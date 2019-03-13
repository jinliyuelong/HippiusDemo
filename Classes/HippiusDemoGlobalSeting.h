//
//  HippiusDemoGlobalSeting.h
//  Hippius
//
//  Created by Liyanjun on 2019/3/13.
//  Copyright © 2019 HAND. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HippiusDemoGlobalSeting : NSObject
+ (instancetype)shareInstance;
@property (nonatomic, copy)   NSString *pageCode;//类型 本应用是demo1
@property (nonatomic, copy)   NSString *version;//
@property (nonatomic, copy)   NSString *displayName;//显示的名称
@property (nonatomic, copy)   NSString *discription;//说明
@property (nonatomic, copy)   NSString *selectIcon;//选中的图片
@property (nonatomic, copy)   NSString *unselectIcon;//未选中的图片
@property (nonatomic, copy)   NSArray *layout;//显示的配置项

@end

NS_ASSUME_NONNULL_END
