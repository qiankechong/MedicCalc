//
//  SettingGroup.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingGroup : NSObject

@property (nonatomic ,strong )NSArray *items;

+(instancetype)groupWithItems:(NSArray *)items;

@end
