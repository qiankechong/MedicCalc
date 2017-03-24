//
//  ActionAndStatusGroupPlistModel.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/23.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ActionAndStatusGroupPlistModel.h"
#import "ActionsPlistModel.h"

@implementation ActionAndStatusGroupPlistModel

-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
    if (self) {
        self.groupTitle = dict[@"groupTitle"];
        NSArray *items = dict[@"items"];
        // 有助于提高性能
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:items.count];
        for (NSDictionary *dict in items) {
            ActionsPlistModel *actions = [[ActionsPlistModel alloc] initWithDict:dict];
            [arrayM addObject:actions];
        }
        self.items = arrayM;
        
    }
    return self;
    
}

+(instancetype)ActionAndStatusWithDict:(NSDictionary *)dict
{
    return [[self alloc ]initWithDict:dict];
}

@end
