//
//  detailViewController.m
//  SamplePList
//
//  Created by Eriko Ichinohe on 2015/01/22.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = [NSString stringWithFormat:@"%@",self.areaString];
    
    
 
    self.areaName.text = [NSString stringWithFormat:@"%@",self.areaString];
    
    
    
    //
    NSMutableAttributedString *ColorStr = [[NSMutableAttributedString alloc] init];     //全部
    NSAttributedString *ColorStrTmp;    //１行分
                               
    NSString *strNameList = @"";
    

    for (NSDictionary *friendDic in self.friendsList) {
        strNameList = [strNameList stringByAppendingString:friendDic[@"Name"]];
        strNameList = [strNameList stringByAppendingString:@" "];
        strNameList = [strNameList stringByAppendingString:friendDic[@"Age"]];
        strNameList = [strNameList stringByAppendingString:@" "];
        strNameList = [strNameList stringByAppendingString:friendDic[@"Gender"]];
        strNameList = [strNameList stringByAppendingString:@"\n"];
        

        UIColor *genderColor;
        if ([friendDic[@"Gender"] isEqualToString:@"男"]) {

            genderColor = [UIColor colorWithRed:0 green:0.392156 blue:0 alpha:1.0];
        }else{

            genderColor = [UIColor colorWithRed:1 green:0.411764 blue:0.705882 alpha:1.0];
        }
        

        ColorStrTmp = [[NSAttributedString alloc] initWithString:strNameList                                                                  attributes:@{                                                                               NSForegroundColorAttributeName : genderColor,                                                                                                                                                                                                                                                                                                                                                                                                                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:20]}
            ];
        [ColorStr appendAttributedString:ColorStrTmp];
        strNameList = @"";
    }
    
    self.FriendsName.attributedText = ColorStr;
    
    NSLog(@"%@",strNameList);
    //self.FriendsName.text = strNameList;
    
//    if (self.friendsList.count == 0) {
//        self.FriendsName.text = @"jjj";
//    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
