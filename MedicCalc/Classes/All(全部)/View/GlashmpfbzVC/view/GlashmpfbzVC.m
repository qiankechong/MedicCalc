//
//  GlashmpfbzVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/9.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlashmpfbzVC.h"
#import "GlasghmpfbzPlist.h"
#import "GlasghmpfbzPlistload.h"
#import "OpenEyeTVC.h"
#import "LanguageTVC.h"
#import "MotionTVC.h"

#import "ActionScorePlistModel.h"
#import "ActionsPlistModel.h"
#import "ActionAndStatusGroupPlistModel.h"


@interface GlashmpfbzVC ()<MotionTVCDelegate>


@property(nonatomic,strong)UITextField *text;
@property(nonatomic,weak)UIDatePicker *datePicker;
@property(nonatomic,strong)NSIndexPath *indexPath;
@property(nonatomic,strong)UITableViewCell *cell;

@end




@implementation GlashmpfbzVC

#pragma mark - 懒加载数据模型
-(NSArray *)groupsArray
{
    
    NSLog(@"getGroups:");

    NSArray * gpArray = [GlasghmpfbzPlistload loadglsgPlistFile:@"Glashmpfbz.plist" ];
    NSLog(@"_groupArray:%@",gpArray);

    NSMutableArray *actionScoreArray = [NSMutableArray array];
    
    for (NSDictionary *dict in gpArray) {
        ActionAndStatusGroupPlistModel *actionsAndResultsGroup = [ActionAndStatusGroupPlistModel ActionAndStatusWithDict:dict];
        [actionScoreArray addObject:actionsAndResultsGroup];
    }
    _groupsArray = [actionScoreArray copy];
    
    return _groupsArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor magentaColor]];
    //重新进入计算选项是，清空配置信息
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"motion"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"eye"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"language"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.groupsArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    ActionAndStatusGroupPlistModel *acts  = self.groupsArray[section];

    return [acts.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentify = @"cell";
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
    }
    
    //评分结果附件提示按钮
    if (indexPath.section == 1) {
        cell.accessoryType = UITableViewCellAccessoryDetailButton;
    }

    ActionAndStatusGroupPlistModel *acts  = self.groupsArray[indexPath.section];
    
    ActionsPlistModel *actions = acts.items[indexPath.row];
    
    cell.textLabel.text  =actions.title;
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString * cellId = @"MedicalGenarlCell";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:cellId];
       
    }
    
    //记录indexpath 变量数值，后期代理中用到
    self.cell = cell;
    self.indexPath = indexPath;
    
    NSLog(@"row %ld",self.indexPath.row);
    NSLog(@"score section %ld",self.indexPath.section);
    
    
    NSString * title  = cell.textLabel.text;
    NSLog(@"title %@",title);
//    if ([title isEqualToString:@"睁眼反应"])
    if (indexPath.section == 0 && indexPath.row == 0)
    {
        OpenEyeTVC *vc = [[OpenEyeTVC alloc] init];
        vc.title = title;
        vc.delegate = self;
        
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }
//    if ([title isEqualToString:@"语言反应"])
        if (indexPath.section == 0 && indexPath.row == 1)
        {
        LanguageTVC *vc = [[LanguageTVC alloc] init];
        vc.title = title;
        vc.delegate = self;
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }
//    if ([title isEqualToString:@"运动反应"])
        if (indexPath.section == 0 && indexPath.row == 2)
        {
        MotionTVC *vc = [[MotionTVC alloc] init];
        vc.title = title;
        vc.delegate = self;
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

-(void)stateScore:(NSString *)score
{
    //获取当前模型数据分层结构
    ActionAndStatusGroupPlistModel *acts  = self.groupsArray[self.indexPath.section];
    ActionsPlistModel *actions = acts.items[self.indexPath.row];
    
    //    //获取当前cell的模型
//    NSIndexPath* indexP = [NSIndexPath indexPathForRow:(0) inSection:1];
    
    //选中后列表名称后+“：”，比如“运动反应” 变成“运动反应：”
    NSString * strCellName =  actions.title;
    NSLog(@"actions.title %@",strCellName);
    NSString * strCellresultName =  [strCellName stringByAppendingString:@":"] ;
    NSLog(@"strCellresultName %@",strCellresultName);

    NSLog(@"row %ld",self.indexPath.row);
    NSLog(@"score section %ld",self.indexPath.section);

    self.title = score;
    
    NSLog(@"score%@",score);

    
    NSString* str =  [strCellresultName stringByAppendingString:score];
    
    self.cell.textLabel.text =  str;
    
   
    
    
    
//    [self.tableView reloadRowsAtIndexPaths:@[self.indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];

}

@end
