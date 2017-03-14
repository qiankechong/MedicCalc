//
//  SettingItemArrow.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "SettingItem.h"

@interface SettingItemArrow : SettingItem


//记录跳转目标控制器
@property (nonatomic,assign)Class destController;
//记录block
@property(nonatomic,copy)void (^option)();

+(instancetype)itemWithTitle:(NSString *)title
                        icon:(NSString *)icon
              destController:(Class)destController;

+(instancetype)itemWithTitle:(NSString *)title
              destController:(Class)destController;

+(instancetype)itemWithTitle:(NSString *)title
                    subTitle:(NSString *)subTitle
              destController:(Class)destController;

+(instancetype)itemWithTitle:(NSString *)title 
                      option:(void(^)())option;

+(instancetype)itemWithTitle:(NSString *)title
                        icon:(NSString *)icon
                      option:(void(^)())option;

@end
