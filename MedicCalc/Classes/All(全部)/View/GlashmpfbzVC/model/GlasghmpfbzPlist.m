//
//  GlasghmpfbzVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlasghmpfbzPlist.h"

@implementation GlasghmpfbzPlist


- (NSString*)filePath:(NSString*)fileName {
    NSArray* myPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* myDocPath = [myPaths objectAtIndex:0];
    NSString* filePath = [myDocPath stringByAppendingPathComponent:fileName];
    return filePath;
}


+ (NSMutableArray *)loadMGPlistFile:(NSString *)plistName
{
    
//    NSString* fileName = [self filePath:@"properties.plist"];
    
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:[NSString stringWithFormat:@"/%@",plistName]];
    NSLog(@"str:%@",str);
    
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
    
    NSMutableArray *outArray = [NSMutableArray array];
    for (NSDictionary *sectionDic in plistArray) {
        NSMutableArray *inArray = [NSMutableArray array];
     
   
            //            CSPlistModel *plistModel = [[CSPlistModel alloc] init];
            //            plistModel.itemArray = [NSMutableArray array];
            //
            //            plistModel.isUsed = sectionIsUse;
            //            plistModel.headerDes = sectionDic[kHeaderDes];
            //            plistModel.footerDes = sectionDic[kFooterDes];
            //
            //            NSArray *dataArray = sectionDic[kDataArray];
            //            for (NSDictionary *itemDic in dataArray) {
            //                BOOL isUse = [itemDic[kIsUse] boolValue];
            //                if (isUse) {
            //                    CSPlistItemModel *itemModel = [[CSPlistItemModel alloc] init];
            //                    itemModel.isUsed = isUse;
            //                    itemModel.itemId = itemDic[kItemId];
            //                    itemModel.itemTitle = itemDic[kItemTitle];
            //                    itemModel.itemIcon = itemDic[kItemIcon];
            //                    [inArray addObject:itemModel];
            //                }
            //            }
            //            plistModel.itemArray = inArray;
            //            [outArray addObject:plistModel];
      
    }
    return outArray;
}

+ (NSMutableArray *)loadItemPlistFile:(NSString *)plistName
{
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:[NSString stringWithFormat:@"/%@",plistName]];
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
    
    NSMutableArray *outArray = [NSMutableArray array];
    for (NSDictionary *itemDic in plistArray) {
    
//        MgPlistModel *itemModel = [[MgPlistModel alloc] init];
        //            itemModel.title = sectionIsUse;
        //            itemModel.itemId = itemDic[kItemId];
        //            itemModel.itemTitle = itemDic[kItemTitle];
        //            itemModel.itemIcon = itemDic[kItemIcon];
//        [outArray addObject:itemModel];
    
    }
    return outArray;
}

+ (NSMutableArray *)loadGroupPlistFile:(NSString *)plistName
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
        
//        MgPlistModel *plistModel = [[MgPlistModel alloc] init];
        
        //        plistModel.itemArray = [NSMutableArray array];
        
        
        //        plistModel.icon = sectionDic[kIcon];;
        //        plistModel.title = sectionDic[kItemTitle];
        //        plistModel.subtitle = sectionDic[kItemSubtitle];
        //        plistModel.copy = sectionDic[kItemArrary];
        //        NSLog(@"title:%@",plistModel.title);
        //
        //        NSLog(@"plistModel.itemArray:%ld",plistModel.itemArray);
        //        //3，层，dictionary 解析分组下一级大类
        //        NSDictionary *dataDict = sectionDic[kItemArrary];
        //
        //        for (NSDictionary *itemDic in dataDict)
        //        {
        //            MgPlistModel *itemModel = [[MgPlistModel alloc] init];
        //
        //            itemModel.title = itemDic[kItemTitle];
        //            NSLog(@"itemModel.title:%@",itemModel.title);
        //
        //            itemModel.subtitle = itemDic[kItemSubtitle];
        ////            itemModel.itemArray = itemDic[kItemArrary];
        //
        //            [inArray addObject:itemModel];
        //        }
        //        
        //        plistModel.itemArray = inArray;
        
//        [outArray addObject:plistModel];
        
    }
    NSLog(@"outArray:%@",outArray);
    
    
    return outArray;
}
@end

