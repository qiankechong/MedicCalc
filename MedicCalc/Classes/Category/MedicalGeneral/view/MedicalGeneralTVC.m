//
//  MedicalGeneralTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/6.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MedicalGeneralTVC.h"
#import "CardiologyTVC.h"
#import "AgeVC.h"

@interface MedicalGeneralTVC ()

@end

@implementation MedicalGeneralTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回"
                                                                             style:UIBarButtonItemStylePlain target:nil
                                                                            action:nil];
    self.view.backgroundColor = [UIColor lightGrayColor];
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
    if ([title isEqualToString:@"年龄"]) {
        AgeVC *vc = [[AgeVC alloc] init];
//        vc.plistName = @"MedicalGenaral.plist";
        
        [self.navigationController pushViewController:vc animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}



@end
