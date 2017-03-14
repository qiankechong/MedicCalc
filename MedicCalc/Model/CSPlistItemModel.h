//
//  CSPlistItemModel.h
//  CSReadPlistDemo
//
//  Created by Shaochong Du on 16/5/12.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSPlistItemModel : NSObject

@property (nonatomic, assign) BOOL isUsed;  //  当前item是否在用
@property (nonatomic, copy) NSString *title;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *subtitle;    //  sectionfooter描述文字
@property (nonatomic, copy) NSString *itemIcon;    //  图标名称
@property (nonatomic, strong) NSMutableArray *itemArray;    //  每组的item数组<CSPlistItemModel>

@end
