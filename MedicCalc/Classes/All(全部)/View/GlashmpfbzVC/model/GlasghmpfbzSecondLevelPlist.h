//
//  GlasghmpfbzSecondLevelPlist.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlasghmpfbzSecondLevelPlist : NSObject

@property (nonatomic, copy) NSString *groupTitle;    //  sectionfooter描述文字
@property (nonatomic, strong) NSArray *items;    //  每组的item数组<CSPlistItemModel>

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)evaluationWithDict:(NSDictionary *)dict;

@end
