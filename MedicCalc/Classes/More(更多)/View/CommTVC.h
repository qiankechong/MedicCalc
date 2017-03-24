//
//  CommTVC.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

//加入公共代理协议
@class MotionTVC;

@protocol MotionTVCDelegate <NSObject>


-(void)stateScore:(NSString *)score;

@end


@interface CommTVC : UITableViewController
#define ZHeader                 @"groupTitle"
#define ZFooter                 @"ZFooter"
#define kitems                  @"items"

#define ZTitle                  @"ZTitle"
#define ZIcon                   @"ZIcon"
#define ZSubTitle               @"ZSubTitle"
#define ZAccessoryType          @"ZAccessoryType"
#define ZAccessoryName          @"ZAccessoryName"
#define ZTargetVc               @"ZTargetVc"
#define ZPlistName              @"ZPlistName"
#define ZCellStyle              @"ZCellStyle"
#define ZTargetVc               @"ZTargetVc"
#define ZKeyName                @"ZKeyName"
#define ZCallFunc               @"ZCallFunc"


-(NSArray * )getGroups;


@property  (nonatomic,strong )NSIndexPath * lastPath;


@property(nonatomic,weak )id<MotionTVCDelegate> delegate;


@end
