//
//  JyProductTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/28.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//



#import "JyProductTVC.h"



@interface JyProductTVC ()

@end

@implementation JyProductTVC
//懒加载
-(NSArray *)getGroups
{
    //第一组
    //存储控制器class //软件设置
    SettingItem *item11 = [SettingItemArrow itemWithTitle:@"医学字典"
                                           destController:nil] ;
    SettingItem *item12 = [SettingItemArrow itemWithTitle:@"护理排班"
                                          destController:nil] ;
    SettingGroup *group1 = [SettingGroup groupWithItems:@[item11,item12]];
    
    //第二组
    SettingItem *item21 = [SettingItemArrow itemWithTitle:@"绩效考核" ];
    SettingItem *item22 = [SettingItemSwitch itemWithTitle:@"用药参考" ];
    SettingItem *item23 = [SettingItemSwitch itemWithTitle:@"临床指南" ];
    SettingGroup *group2 = [SettingGroup groupWithItems:@[item21,item22,item23]];
        

    return @[group1,group2];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor cyanColor]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source




@end
