//
//  AcitonsPlistModel.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/23.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActionsPlistModel : NSObject
@property (nonatomic, copy) NSString *title;    //  sectionfooter描述文字
@property (nonatomic, copy) NSString *subtitle;    //  sectionfooter描述文字
@property (nonatomic, strong) NSArray *items;    //  每组的item数组<CSPlistItemModel>

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)ActionItemsWithDict:(NSDictionary *)dict;

@end
