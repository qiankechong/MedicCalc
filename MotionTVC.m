//
//  MotionTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/14.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MotionTVC.h"
#import "GlasghmpfbzPlist.h"
#import "secondLevelPlist.h"
#import "GlasghmStateModel.h"
#import "GlasghmpfbzPlistload.h"



@interface MotionTVC ()

@end


@implementation MotionTVC

#pragma mark - 懒加载数据模型

-(NSArray *)getGroups
{
    
    NSLog(@"getGroups:");
    if (!_groupArray)
    {
        _groupArray = [GlasghmpfbzPlistload loadglsgPlistFile:@"Glashmpfbz.plist" ];
        NSLog(@"_groupArray[0]:%@",_groupArray[0]);
    }
    
    NSArray * itemsArray = [_groupArray[0] valueForKey:@"items"];
    
    _groupArray = itemsArray;
    NSLog(@"itemsArray[0][0]:%@",_groupArray);
    
    
    NSArray * itemsArray2 = [itemsArray[2] valueForKey:@"items"];
    
    _groupArray = itemsArray2;
    
    NSLog(@"itemsArray2:%@",_groupArray);
    
    return  _groupArray;
    
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
    
    NSLog(@"[self.group count]%ld",[self.groupArray count]);
    return 1;//[self.groupArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    NSLog(@"[self.group[section][kitems] count]%ld",[self.groupArray[section][kitems] count]);
    
    return [self.groupArray count];//[self.groupArray[section][kitems] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    static NSString *cellIdentify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
        //        cell = [[UITableViewCell alloc] initWithStyle:[self cellStyleWithItem:item] reuseIdentifier:ID];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
    }
    
    //    //获取数据
    //    NSDictionary *item = self.groupArray[indexPath.section][kitems][indexPath.row];
    //
    //    NSLog(@"item%@",item);
    //
    
    // Configure the cell...
    cell.textLabel.text  = [self.groupArray[indexPath.row] valueForKey:@"title"];
    
    
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
    
    [self.navigationController popViewControllerAnimated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


@end
