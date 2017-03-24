//
//  GlasghmpfbzFourLevelPlist.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlasghmpfbzFourLevelPlist.h"

@implementation GlasghmpfbzFourLevelPlist

-(instancetype)initWithDict:(NSDictionary *)dict;
{
    self = [super init];
        if (self) {
                self.title = dict[@"title"];
        self.score = dict[@"score"];
            }
       return self;
}

//if (self) {
//    [self setValuesForKeysWithDictionary:dict];
//}
//return self;

+(instancetype)statusWithDict:(NSDictionary *)dict;
{
    
    return [[self alloc] initWithDict:dict];

}
@end
