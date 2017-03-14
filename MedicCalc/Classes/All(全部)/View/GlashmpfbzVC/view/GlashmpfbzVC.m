//
//  GlashmpfbzVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/9.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlashmpfbzVC.h"
#import "GlasghmpfbzPlist.h"
#import "secondLevelPlist.h"
#import "GlasghmStateModel.h"
#import "GlasghmpfbzPlistload.h"
#import "OpenEyeTVC.h"
#import "LanguageTVC.h"
#import "MotionTVC.h"


@interface GlashmpfbzVC ()

@end




@implementation GlashmpfbzVC

#pragma mark - 懒加载数据模型
-(NSArray *)getGroups
{
    
    NSLog(@"getGroups:");
    if (!_groupArray)
    {
        _groupArray = [GlasghmpfbzPlistload loadglsgPlistFile:@"Glashmpfbz.plist" ];
        NSLog(@"_groupArray:%@",_groupArray);
    }
    return  _groupArray;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor magentaColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    if ([title isEqualToString:@"睁眼反应"]) {
        OpenEyeTVC *vc = [[OpenEyeTVC alloc] init];
//        vc.plistName = @"MedicalGenaral.plist";
        vc.title = title;
        [self.navigationController pushViewController:vc animated:YES];
        //[self.navigationController popViewControllerAnimated:YES];
        
    }
    if ([title isEqualToString:@"语言反应"]) {
        LanguageTVC *vc = [[LanguageTVC alloc] init];
//        vc.plistName = @"MedicalGenaral.plist";
        vc.title = title;
        [self.navigationController pushViewController:vc animated:YES];
        //        [self.navigationController popViewControllerAnimated:YES];
        
    }
    if ([title isEqualToString:@"运动反应"]) {
        MotionTVC *vc = [[MotionTVC alloc] init];
//        vc.plistName = @"MedicalGenaral.plist";
        vc.title = title;
        [self.navigationController pushViewController:vc animated:YES];
        //        [self.navigationController popViewControllerAnimated:YES];
        
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

@end
