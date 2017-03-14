//
//  CateGoryBaseTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/6.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "CateGoryBaseTVC.h"

@interface CateGoryBaseTVC ()
//获取plist数据
@property (nonatomic,strong) NSArray *setData;

@end

@implementation CateGoryBaseTVC

//懒加载plist数据

- (instancetype)init{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        
    }
    return self;
}

-(NSArray *)setData
{
    if (!_setData) {
        _setData = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:self.plistName ofType:nil] ];
    }
    return _setData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //     NSLog(@"sec,%ld",[self.setData count]);
    return [self.setData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    NSLog(@"numberOfRowsInSection,%ld",[self.setData[section][@"Items"] count]);
    
    return [self.setData[section][@"Items"] count];
}

#pragma mark - 头部视图设置
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return  self.setData[section][@"header"];
}

#pragma mark - 底部视图设置
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return self.setData[section][@"footer"];
}
//
//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *cellIdentify = @"cellIdentify";
    //设置cell
    //1>.取出模型
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
    }
    
    
  
    //    //获取数据
    NSDictionary *item = self.setData[indexPath.section][@"Items"][indexPath.row];
      //    //赋值
    cell.textLabel.text = [item valueForKey:@"title"]; // @"adsf";//
    
    return cell;
}

@end
