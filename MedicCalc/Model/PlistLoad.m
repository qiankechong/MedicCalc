//
//  PlistLoad.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/2.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "PlistLoad.h"
#import "CSPlistModel.h"
#import "CSPlistItemModel.h"


#define kIcon       @"icon"
#define kHeaderDes  @"headerDes"
#define kFooterDes  @"footerDes"
#define kDataDict   @"itemDict"

#define kItemTitle      @"title"
#define kItemSubtitle   @"subtitle"
#define kItemArrary     @"items"

@implementation PlistLoad

+ (NSArray *)loadGroupPlistFile:(NSString *)plistName
{
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:[NSString stringWithFormat:@"/%@",plistName]];
//    NSLog(@"str:%@",str);
        //1层 root
        NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
    
        NSMutableArray *outArray = [NSMutableArray array];
        //解出分组list层，共3 分组
//        2,层dictionary
    
        for (NSDictionary *sectionDic in plistArray)
        {
            //将分组成放入数组中
            NSMutableArray *inArray = [NSMutableArray array];
  
            CSPlistModel *plistModel = [[CSPlistModel alloc] init];
            
            plistModel.itemArray = [NSMutableArray array];
          
            
            plistModel.icon = sectionDic[kIcon];;
            plistModel.title = sectionDic[kItemTitle];
            plistModel.subtitle = sectionDic[kItemSubtitle];
            plistModel.itemArray = sectionDic[kItemArrary];
            NSLog(@"title:%@",plistModel.title);
            
            NSLog(@"plistModel.itemArray:%ld",plistModel.itemArray);
            //3，层，dictionary 解析分组下一级大类
             NSDictionary *dataDict = sectionDic[kItemArrary];
            
            for (NSDictionary *itemDic in dataDict)
            {
                CSPlistItemModel *itemModel = [[CSPlistItemModel alloc] init];
                
                itemModel.title = itemDic[kItemTitle];
                NSLog(@"itemModel.title:%@",itemModel.title);
                
                itemModel.subtitle = itemDic[kItemSubtitle];
                itemModel.itemArray = itemDic[kItemArrary];
         
                [inArray addObject:itemModel];
            }
            
            plistModel.itemArray = inArray;
            
            [outArray addObject:plistModel];
            
            }
    NSLog(@"outArray:%@",outArray);
    
    
    return outArray;
}

@end
