//
//  CommTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "CommTVC.h"

@interface CommTVC ()
@property (nonatomic,strong )NSArray *group;

@end

@implementation CommTVC


/**
 懒加载

 @return <#return value description#>
 */

-(NSArray * )getGroups
{
    return nil;
}


-(NSArray *)group
{
    if (!_group) {
        _group = [self getGroups];
    }
    return _group;
}


- (instancetype)init{
    
    self = [super initWithStyle:UITableViewStyleGrouped];

     if (self) {
              }
    return self;
}


- (void)viewDidLoad
  {
    [super viewDidLoad];
    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    NSLog(@"[self.group count]%ld",[self.group count]);
    return [self.group count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"[self.group[section][kitems] count]%ld",[self.group[section][kitems] count]);
    
    return [self.group[section][kitems] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    
    static NSString *cellIdentify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:[self cellStyleWithItem:item] reuseIdentifier:ID];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
    }
    
    //获取数据
    NSDictionary *item = self.group[indexPath.section][kitems][indexPath.row];
    
    NSLog(@"item%@",item);
    
    
    // Configure the cell...
    cell.textLabel.text  = [self.group[indexPath.section][kitems][indexPath.row] valueForKey:@"title"];
    
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return  self.group[section][ZHeader];


}


@end
