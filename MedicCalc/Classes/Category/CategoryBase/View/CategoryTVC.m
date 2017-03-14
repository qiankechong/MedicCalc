//
//  CategoryTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/2.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "CategoryTVC.h"
#import "PlistLoad.h"
#import "CSPlistModel.h"
#import "CSPlistItemModel.h"

#import "MedicalGeneralTVC.h"
#import "CardiologyTVC.h"
#import "CriticalCareTVC.h"
#import "EndocrinologyTVC.h"
#import "GastroenterologyTVC.h"
#import "HematologyOncologyTVC.h"
#import "DailyNursingCareTVC.h"


@interface CategoryTVC ()
{
    NSArray * groupsItem ;
}

@property(nonatomic,strong)NSArray *categoryArry;

@end

@implementation CategoryTVC

//懒加载
-(NSArray *)categoryArry
{
    if (!_categoryArry) {
        _categoryArry = [PlistLoad loadGroupPlistFile:@"NursingList.plist"];
    }
    return  _categoryArry;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self.view setBackgroundColor:[UIColor purpleColor]];
    
    self.title =@"分类";

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return [self.categoryArry count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

     CSPlistModel *model = self.categoryArry[section];
    
    NSLog(@"[model.itemArray.count ]:%ld",model.itemArray.count);
    return model.itemArray.count;
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentify = @"cellIdentify";
    
    
    //设置cell
    //1>.取出模型
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
     }
    
    NSLog(@"section:%ld,row:%ld",indexPath.section,indexPath.row);
    
    
    CSPlistModel *model = self.categoryArry[indexPath.section];
    CSPlistItemModel *itemModel = model.itemArray[indexPath.row];
    cell.textLabel.text = itemModel.title;
    cell.detailTextLabel.text = itemModel.subtitle;
    
    //设置箭头模式
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    
    NSLog(@"itemModel ,%@,%@",
          itemModel.title,itemModel.subtitle);
    

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    CSPlistModel *model = self.categoryArry[indexPath.section];
//    TLSettingItem *item = [self.data[indexPath.section] objectAtIndex:indexPath.row];
    NSString * title  = cell.textLabel.text;
    NSLog(@"title %@",title);
    if ([title isEqualToString:@"日常护理"]) {
        DailyNursingCareTVC *vc = [[DailyNursingCareTVC alloc] init];
        vc.plistName = @"DailyNursingCare.plist";
 
        [self.navigationController pushViewController:vc animated:YES];
//        [self.navigationController presentViewController:vc animated:YES completion:^{NSLog(@"完成");}];
    }

    
    else if ([title isEqualToString:@"医学通用公式"]) {
        MedicalGeneralTVC *vc = [[MedicalGeneralTVC alloc] init];
        vc.plistName = @"MedicalGenaral.plist";
        
//        [self setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"心脏病学"]) {
        CardiologyTVC *vc = [[CardiologyTVC alloc] init];
        vc.plistName = @"Cardiology.plist";
        
//        [self setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:vc animated:YES];

    }
    else if ([title isEqualToString:@"危重病人医疗"]) {
        CriticalCareTVC *vc = [[CriticalCareTVC alloc] init];
        vc.plistName = @"CriticalCare.plist";
          [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"内分泌学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"胃肠病学"]) {
        GastroenterologyTVC *vc = [[GastroenterologyTVC alloc] init];
        vc.plistName = @"Gastroenterology.plist";
        
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"血液病学/肿瘤学"]) {
        HematologyOncologyTVC *vc = [[HematologyOncologyTVC alloc] init];
        vc.plistName = @"HematologyOncology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"肝脏病学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"传染病学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"肾脏病学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"神经病学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    else if ([title isEqualToString:@"妇产科"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"矫形外科学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"儿科学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"肺病学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"外科学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    else if ([title isEqualToString:@"毒理学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"创伤外科"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    else if ([title isEqualToString:@"麻醉学"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    else if ([title isEqualToString:@"心脏系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
    else if ([title isEqualToString:@"内分泌/代谢系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"胃肠道系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"血液系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"免疫系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"肌肉骨骼系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"神经系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"肾脏系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if ([title isEqualToString:@"呼吸系统"]) {
        EndocrinologyTVC *vc = [[EndocrinologyTVC alloc] init];
        vc.plistName = @"Endocrinology.plist";
        [self.navigationController pushViewController:vc animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}



@end
