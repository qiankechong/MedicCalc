//
//  BaseSettingTVC.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/1.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SettingItem.h"
#import "SettingGroup.h"
#import "SettingItemArrow.h"
#import "SettingItemSwitch.h"
#import "MoreSettingCell.h"

@interface BaseSettingTVC : UITableViewController
-(NSArray * )getGroups;
@property(nonatomic,copy)NSString  *viewTitle;

@end
