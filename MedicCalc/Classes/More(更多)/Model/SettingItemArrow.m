//
//  SettingItemArrow.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "SettingItemArrow.h"

@implementation SettingItemArrow
+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon option:(void (^)())option
{
    SettingItemArrow *item = [self itemWithTitle:title icon:icon];
    item.option = option;
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title  option:(void (^)())option
{
    SettingItemArrow *item = [self itemWithTitle:title icon:nil option:option];
    return item;
}



+(instancetype)itemWithTitle:(NSString *)title  destController:(Class)destController
{
    SettingItemArrow *item = [self itemWithTitle:title icon:nil destController:destController]   ;
    return item;
    
}

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon destController:(Class)destController
{
    SettingItemArrow *item = [self itemWithTitle:title icon:icon]   ;
    item.destController = destController;
    return item;
    
}
+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle destController:(Class)destController
{
    SettingItemArrow *item = [self itemWithTitle:title  subTitle:subTitle icon:nil];
    return item;
}

@end
