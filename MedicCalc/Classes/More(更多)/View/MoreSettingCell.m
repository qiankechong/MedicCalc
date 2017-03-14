//
//  MoreSettingCell.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MoreSettingCell.h"

#import "SettingItemSwitch.h"
#import "SettingItemArrow.h"
#import "SettingItem.h"


@implementation MoreSettingCell

+(instancetype)cellWithTableview:(UITableView *)tableView
{
    static NSString * reuseId = @"item";
    
    MoreSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleSubtitle
                          reuseIdentifier:reuseId];
    
//    //设置字体大小
    cell.textLabel.font =[UIFont systemFontOfSize:15];
    }
    return  cell;
}
//2,//获取模型对象，给cell内部子控件赋值

-(void)setItem:(SettingItem *)item
{
    _item = item;
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subTitle;
    //判读是否是箭头或者是开关
    if ( [item isKindOfClass:[SettingItemArrow class]]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else if([item isKindOfClass:[SettingItemSwitch class]])
    {
        self.accessoryView = [[UISwitch alloc]init];
        self.selectionStyle = UITableViewCellSelectionStyleNone;

    }else
    {
        self.accessoryView  = nil;
    }
    

}
@end
