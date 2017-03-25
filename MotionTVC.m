//
//  MotionTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/14.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MotionTVC.h"

@interface MotionTVC ()

@end


@implementation MotionTVC

#pragma mark - 懒加载数据模型

-(NSInteger )getItemIndex
{
    return MOTIONITEMSINDEX;
}

-(NSString *)getUserKeyString
{
    return USRKMOTION;
}
@end
