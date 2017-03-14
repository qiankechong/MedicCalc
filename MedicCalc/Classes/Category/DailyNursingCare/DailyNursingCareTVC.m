//
//  DailyNursingCareTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/7.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "DailyNursingCareTVC.h"
#import "GlashmpfbzVC.h"


@interface DailyNursingCareTVC ()

@end

@implementation DailyNursingCareTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    if ([title isEqualToString:@"格拉斯哥(GCS)昏迷评分标准"]) {
        GlashmpfbzVC *vc = [[GlashmpfbzVC alloc] init];
//               vc.plistName = @"MedicalGenaral.plist";
        vc.title = title;
//        [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:self.parentViewController animated:YES];
        
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}



@end
