//
//  secondLevelPlist.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface secondLevelPlist : NSObject
@property (nonatomic, copy) NSString *state;;  //  当前分组是否在用
@property (nonatomic, copy) NSString *score;    //  sectionfooter描述文字

-(instancetype)initWithDic:(NSDictionary*)dict;

+(instancetype)glasgStateWithDic:(NSDictionary*)dict;

@end
