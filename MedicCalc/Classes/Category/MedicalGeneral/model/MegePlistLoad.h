//
//  MegePlistLoad.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/6.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MegePlistLoad : NSObject
@property (nonatomic, copy) NSString *icon;;  //  当前分组是否在用
@property (nonatomic, copy) NSString *title;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *subtitle;    //  sectionfooter描述文字
@property (nonatomic, strong) NSArray *itemArray;    //  每组的item数组<CSPlistItemModel>
@property (nonatomic, assign) BOOL isUsed;  //  当前分组是否在用
@property (nonatomic, copy) NSString *headerDes;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *footerDes;    //  sectionfooter描述文字
//@property (nonatomic, strong) NSMutableArray *itemArray;    //  每组的item数组<CSPlistItemModel>

@property (nonatomic ,strong)NSArray *arryMorelist;
//定义护理大类
@property(nonatomic,strong)NSArray *groups;

//定义护理大类分项目
@property (nonatomic,strong)NSArray *items;


@property (nonatomic, copy) NSString *itemIcon;    //  图标名称

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

+ (NSMutableArray *)loadGroupPlistFile:(NSString *)plistName;

/**
 *  加载分组类型的plist文件
 *
 *  @param plistName plist名称
 *
 *  @return 数组数据
 */
+ (NSMutableArray *)loadMGPlistFile:(NSString *)plistName;
@end
