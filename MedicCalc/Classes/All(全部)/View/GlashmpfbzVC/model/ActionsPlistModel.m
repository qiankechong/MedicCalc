//
//  AcitonsPlistModel.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/23.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ActionsPlistModel.h"
#import "ActionScorePlistModel.h"
@implementation ActionsPlistModel

-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
    if (self) {
        self.title = dict[@"title"];
        self.subtitle = dict[@"subtitle"];
        NSArray *items = dict[@"items"];
        // 有助于提高性能
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:items.count];
        for (NSDictionary *dict in items) {
            ActionScorePlistModel *actionScore = [[ActionScorePlistModel alloc] initWithDict:dict];
            [arrayM addObject:actionScore];
        }
        self.items = arrayM;
    }
    return self;
    
}

+(instancetype)ActionItemsWithDict:(NSDictionary *)dict
{
    return [[self alloc ]initWithDict:dict];
}
@end
