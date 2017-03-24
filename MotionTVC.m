//
//  MotionTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/14.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MotionTVC.h"
#import "GlasghmpfbzPlist.h"
#import "GlasghmpfbzPlistload.h"
#import "ActionScorePlistModel.h"
#import "ActionsPlistModel.h"
#import "ActionAndStatusGroupPlistModel.h"

@interface MotionTVC ()
@property (nonatomic, strong) NSArray *car;
@property(nonatomic,strong)ActionsPlistModel *actionsGroup;
@property  (nonatomic,strong )NSArray *groupsArray;

@end


@implementation MotionTVC

#pragma mark - 懒加载数据模型

// 从包中读取数据，实现字典转模型

-(NSArray *)groupsArray
{
    
    NSLog(@"getGroups");
//    if (!_groupsArray)
//    {
        NSArray * gpArray = [GlasghmpfbzPlistload loadglsgPlistFile:@"Glashmpfbz.plist" ];
//    }

    
    NSLog(@"_groupArray1:%@",_groupsArray);
    NSLog(@"_groupArray count1:%ld",[_groupsArray count]);

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
//
    NSLog(@"[groupsArray]:%@",self.groupsArray);
    
    ActionAndStatusGroupPlistModel *acts  = self.groupsArray[0];
    NSLog(@"acts.groupTitle:%@",acts.groupTitle);
    ActionsPlistModel *actions = acts.items[2];
    
    NSLog(@"[actions.items count]:%ld",[actions.items count]);
    


    return [actions.items count];//[self.groupArray[section][kitems] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    static NSString *cellIdentify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
    }
    
    ActionAndStatusGroupPlistModel *acts  = self.groupsArray[0];
    NSLog(@"acts.groupTitle:%@",acts.groupTitle);
    ActionsPlistModel *actions = acts.items[2];
    
//    cell.textLabel.text  = actions.title;
    NSLog(@"actions.title:%@",actions.title);
    ActionScorePlistModel *ass = actions.items[indexPath.row];

    cell.textLabel.text  =ass.title;
    
    if ([[[NSUserDefaults standardUserDefaults]valueForKey:@"motion"] isEqualToString:cell.textLabel.text])
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

   
//    ActionsPlistModel *actions = acts.items[2];
//    ActionScorePlistModel *ass = actions.items[indexPath.row];
    
    cell.textLabel.text  =ass.title;
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * cellId = @"MedicalGenarlCell";
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    }
    
    NSString * title  = cell.textLabel.text;

    NSLog(@"title %@",title);
    
    if ([self.delegate respondsToSelector:@selector(stateScore:)])
    {
        [self.delegate stateScore:title];
    }
    
    //将上述数据全部存储到NSUserDefaults中
    [[NSUserDefaults standardUserDefaults]setValue:title forKey:@"motion"];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;//cell选中的背景风格

    
    [self.navigationController popViewControllerAnimated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}


@end
