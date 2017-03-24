//
//  ActionScorePlistModel.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/23.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ActionScorePlistModel.h"

@implementation ActionScorePlistModel

-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
    if (self) {
        self.title = dict[@"title"];
        self.score = dict[@"score"];
 
    }
    return self;
    
}
+(instancetype)statusGroupWithDict:(NSDictionary *)dict
{
    return [[self alloc ]initWithDict:dict];
}
@end
