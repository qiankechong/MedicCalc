//
//  MoreTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/15.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MoreTVC.h"

#import "MedicGenTVC.h"
#import "JyProductTVC.h"
#import "AboutUsVC.h"

#import "detailViewController.h"
#import "LoadMoreList.h"

@interface MoreTVC ()
//@property(nonatomic,strong)NSArray * nsarryMore;
//@property(nonatomic,strong)NSArray * arryly2Str;

@end

@implementation MoreTVC

-(NSArray *)getGroups
{
         //第一组
        //存储控制器class //软件设置
        SettingItem *item11 = [SettingItemArrow itemWithTitle:@"软件设置"  destController:[MedicGenTVC class]] ;
        SettingItem *item12 = [SettingItemArrow itemWithTitle:@"精益产品" destController:[JyProductTVC class]];
        SettingGroup *group1 = [SettingGroup groupWithItems:@[item11,item12]];
        
        //第二组
        SettingItem *item21 = [SettingItemArrow itemWithTitle:@"帮助手册" ];
        SettingItem *item22 = [SettingItemSwitch itemWithTitle:@"意见反馈" ];
        SettingItem *item23 = [SettingItemSwitch itemWithTitle:@"软件评分" ];
        SettingGroup *group2 = [SettingGroup groupWithItems:@[item21,item22,item23]];
        
        
        
        //第三组
        //存储block检查新版本
        SettingItem *item31 = [SettingItemArrow itemWithTitle:@"检查新版本 "
                                                       option:^{
                                                           NSLog(@"当前已经是检查新版本 ，block");
                                                       }];
        SettingItem *item32 = [SettingItemArrow itemWithTitle:@"推荐给朋友" ];
        SettingItem *item33 = [SettingItemArrow itemWithTitle:@"关于" destController:[AboutUsVC class]];
        SettingGroup *group3 = [SettingGroup groupWithItems:@[item31,item32,item33]];
        

        return @[group1,group2,group3];;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSInteger i = 0;
    
//
//    NSBundle *plisthPath = [NSBundle mainBundle]
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //设置页面名称
    self.title = @"更多";
    // 添加帮助按钮
    UIBarButtonItem *helpItem = [[UIBarButtonItem alloc]initWithTitle:@"帮助help"
                                                                style:(UIBarButtonItemStylePlain)
                                                               target:self
                                                               action:@selector(helpItem)];
    
    self.navigationItem.rightBarButtonItem = helpItem;
    
    
    //cell 分组效果
    //readonly
//    self.tableView.style = UITableViewStyleGrouped;
    //设置背景图片
    [self.tableView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]]];
    
    
//    NSString *fielPath = [[NSBundle mainBundle] pathForResource:@"more" ofType:@"plist"];
//    _nsarryMore = [NSArray arrayWithContentsOfFile:fielPath];
//    NSLog(@"students:%@",_nsarryMore);
//    NSLog(@"more.count:%ld",[_nsarryMore count]);
//    
//    for (NSObject *object in _nsarryMore) {
//        NSLog(@"数组对象:%@", object);
//    }
//    for (i = 0; i < [_nsarryMore count]; i++) {
//        _arryly2Str = [_nsarryMore objectAtIndex:i];
//        NSLog(@"数组对象 str:%@", _arryly2Str);
//        NSLog(@"number of rows in section: %ld",[_arryly2Str count]);//it prints the right value
//        for (NSObject *object in _arryly2Str) {
//            NSLog(@"数组对象 arryly2Str:%@", object);
//        }
//    }
    
//    [self.tableView backgroundColor:[UIColor redColor]];
    }

-(void)helpItem
{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
