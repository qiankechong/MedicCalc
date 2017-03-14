//
//  SettingGroup.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "SettingGroup.h"

@implementation SettingGroup

+(instancetype)groupWithItems:(NSArray *)items
{
    SettingGroup * group = [[self alloc]init];
    group.items = items;
    return group;
}
@end
