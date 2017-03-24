//
//  GlasghmpfbzThirdLevelPlist.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlasghmpfbzThirdLevelPlist.h"

@implementation GlasghmpfbzThirdLevelPlist

-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
    if (self) {
        self.title = dict[@"title"];
        self.subtitle = dict[@"subtitle"];
        self.items = dict[@"items"];
    }
    return self;

}
+(instancetype)statusGroupWithDict:(NSDictionary *)dict
{
    return [[self alloc ]initWithDict:dict];
}

@end
