//
//  secondLevelPlist.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "secondLevelPlist.h"

@implementation secondLevelPlist

-(instancetype)initWithDic:(NSDictionary*)dict;
{
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
    
}

+(instancetype)glasgStateWithDic:(NSDictionary*)dict
{
    return [[self alloc]initWithDic:dict];
    
}


@end
