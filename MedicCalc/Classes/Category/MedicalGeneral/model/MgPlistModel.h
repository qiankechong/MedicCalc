//
//  MgPlistModel.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/6.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MgPlistModel : NSObject
@property (nonatomic, copy) NSString *title;        //  sectionheader描述文字
@property (nonatomic, copy) NSString *subtitle;     //  sectionfooter描述文字
@property (nonatomic, copy) NSString *item;       //  每组的item数组<CSPlistItemModel>
@property (nonatomic, copy) NSString *targetVc;;    //  当前分组是否在用

@end
