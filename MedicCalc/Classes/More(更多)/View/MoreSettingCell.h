//
//  MoreSettingCell.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingItem;

@interface MoreSettingCell : UITableViewCell

+(instancetype)cellWithTableview:(UITableView * )tableView;
//获取模型对象，给cell内部子控件赋值
@property(nonatomic,strong)SettingItem *item;


@end
