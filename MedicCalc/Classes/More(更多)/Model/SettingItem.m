//
//  SettingItem.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem

+(instancetype)itemWithTitle:(NSString *)title
{
    SettingItem *item = [[self alloc]init];
    item.title = title;
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString * )icon
{
    SettingItem *item = [[self alloc]init];
    item.title = title;
    item.icon  = icon ;
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle icon:(NSString *)icon
{
    SettingItem *item = [[self alloc]init];
    item.title = title;
    item.subTitle = subTitle;
    item.icon  = icon ;
    return item;
}

@end
