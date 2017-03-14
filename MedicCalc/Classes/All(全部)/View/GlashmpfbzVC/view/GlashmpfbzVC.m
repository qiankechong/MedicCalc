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
//-(NSArray *)groupArray
//{
//    if (!_groupArray) {
//        _groupArray = [GlasghmpfbzPlistload loadglsgPlistFile:@"Glashmpfbz.plist" ];
//        
//    }
//    return  _groupArray;
//}
//

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor magentaColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
