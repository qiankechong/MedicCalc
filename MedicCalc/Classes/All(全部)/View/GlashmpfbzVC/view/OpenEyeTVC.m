//
//  OpenEyeTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/14.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "OpenEyeTVC.h"

@interface OpenEyeTVC ()

@end

@implementation OpenEyeTVC

#pragma mark - 懒加载数据模型

-(NSInteger )getItemIndex
{
    return EYEITEMSINDEX;
}

-(NSString *)getUserKeyString
{
    return USRKEYE;
}
@end
