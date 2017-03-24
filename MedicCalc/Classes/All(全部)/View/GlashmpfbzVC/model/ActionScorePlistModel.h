//
//  ActionScorePlistModel.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/23.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActionScorePlistModel : NSObject
@property (nonatomic, copy) NSString *title;    //  sectionfooter描述文字
@property (nonatomic, copy) NSString *score;    //  sectionfooter描述文字

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)statusGroupWithDict:(NSDictionary *)dict;


@end
