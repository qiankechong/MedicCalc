//
//  PlistLoad.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/2.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistLoad : NSObject
@property (nonatomic, assign) BOOL isUsed;  //  当前分组是否在用
@property (nonatomic, copy) NSString *headerDes;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *footerDes;    //  sectionfooter描述文字
//@property (nonatomic, strong) NSMutableArray *itemArray;    //  每组的item数组<CSPlistItemModel>

@property (nonatomic ,strong)NSArray *arryMorelist;
//定义护理大类
@property(nonatomic,strong)NSArray *groups;

//定义护理大类分项目
@property (nonatomic,strong)NSArray *items;


//定义标题
@property (nonatomic ,copy)NSString *title;
//定义英文标题
@property (nonatomic ,copy)NSString *subtitle;
//定义图标
@property (nonatomic ,copy)NSString *icon;



/**
 *城市数组的NSString泛型
 */
@property(nonatomic,strong)NSArray <NSString *> *cities;

//模型构造函数
//+ (NSMutableArray)nameWithArray:(NSString *)plistName;
//
//+ (instancetype)nameWithArray:(NSArray *)arry;

//- (instancetype)initWithArray:(NSArray *)arry;

//+(instancetype)groups:(NSArray * )items;

+ (NSArray *)loadGroupPlistFile:(NSString *)plistName;


@end
