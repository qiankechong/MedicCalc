//
//  AllItemTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/1.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "AllItemTVC.h"

@interface AllItemTVC ()

@end

@implementation AllItemTVC


-(NSArray *)getGroups
{
    //第一组
    //存储控制器class //软件设置
    SettingItem *item11 = [SettingItemArrow itemWithTitle:@"肺泡-动脉养分压差"
                                                 subTitle:@"A-a O₂Gradient"
                                           destController:nil] ;
    SettingItem *item12 = [SettingItemArrow itemWithTitle:@"一过性脑缺血发作ABCD²评分"
                                                 subTitle:@"ABCD² Score for TIA"
                                           destController:nil];
    SettingItem *item13 = [SettingItemArrow itemWithTitle:@"嗜中性粒细胞绝对值"
                                                 subTitle:@"Absolute Neutrophil Count(ANC)"
                                           destController:nil];
    
    SettingItem *item14 = [SettingItemArrow itemWithTitle:@"网织红细胞绝对值"
                                                 subTitle:@"Absolute Reticulocyte Count"
                                           destController:nil];
    SettingItem *item15 = [SettingItemArrow itemWithTitle:@"醋氨酚过量和乙酰半胱氨酸剂量"
                                                 subTitle:@"Acetaminophen overdose and NAC Dosing"
                                           destController:nil];
    
  
     SettingItem *item16 = [SettingItemArrow itemWithTitle:@"年龄 "
                                                  subTitle:@"AGE"
//                                                    option:^{
//                                                       NSLog(@"当前已经是检查新版本 ，block");
//                                                   }
                                            destController:nil];
    SettingItem *item17 = [SettingItemArrow itemWithTitle:@"急性阑尾炎Alvarado评分"
                                                 subTitle:@"Alvarado Score for Acute Appendicitis"
                                           destController:nil];
    SettingItem *item18 = [SettingItemArrow itemWithTitle:@"心绞痛分级CCS"
                                                 subTitle:@"Angina Scale(CCS)"
                                           destController:nil];
    SettingItem *item19 = [SettingItemArrow itemWithTitle:@"阴离子间隙"
                                                 subTitle:@"Anion Gap"
                                           destController:nil];
    SettingGroup *group1 = [SettingGroup groupWithItems:@[item11,item12,item13,item14,item15,item16,item17,item18,item19]];
    
    
    return @[group1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor orangeColor]];
    self.title = @"全部项目";
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
