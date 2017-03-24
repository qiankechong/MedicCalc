//
//  GlasghmpfbzSecondLevelPlist.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlasghmpfbzSecondLevelPlist.h"

@implementation GlasghmpfbzSecondLevelPlist


-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
    if (self) {
        self.groupTitle = dict[@"groupTitle"];
      
        self.items = dict[@"items"];
    }
    return self;
    
}
+(instancetype)evaluationWithDict:(NSDictionary *)dict
{
    return [[self alloc ]initWithDict:dict];
}

@end
