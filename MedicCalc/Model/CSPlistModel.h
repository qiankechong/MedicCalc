//
//  CSPlistModel.h
//  CSReadPlistDemo
//
//  Created by Shaochong Du on 16/5/12.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSPlistModel : NSObject

@property (nonatomic, copy) NSString *icon;;  //  当前分组是否在用
@property (nonatomic, copy) NSString *title;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *subtitle;    //  sectionfooter描述文字
@property (nonatomic, strong) NSArray *itemArray;    //  每组的item数组<CSPlistItemModel>

@end
