//
//  LoadMoreList.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "LoadMoreList.h"

@implementation LoadMoreList

- (instancetype)initWithArray:(NSArray *)arry
{
    
    LoadMoreList *loadList  = [[LoadMoreList alloc]init];
    
    loadList.arryMorelist = arry;
    
    return loadList;
    
}

//+(NSMutableArray * )nameWithArray:(NSString *)plistName
//{
//    return nil;
//}
//
//+ (instancetype)nameWithArray:(NSArray *)arry;
//{
//    return nil;
//}
+(instancetype)groups:(NSArray * )items
{
    LoadMoreList *loadList  = [[self alloc]init];
    
    loadList.arryMorelist = items;
    
    return loadList;
    
}

- (NSArray *)nameWithArray:(NSString *)plistName
{
//    NSString *str  = [NSBundle mainBundle]pathForResource:@"" ofType:a
//    //创建并返回一个字典,将这个字典传给当前类:HLProvince 即self 进行返回
    
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:[NSString stringWithFormat:@"/%@",plistName]];
    NSLog(@"str:%@",str);
    
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
    return plistArray;

}
//    NSMutableArray *outArray = [NSMutableArray array];
//    for (NSArray *sectionArry in plistArray)
//    {
//        NSMutableArray *inArray = [NSMutableArray array];
////        BOOL sectionIsUse = [sectionDic[kIsUse] boolValue];
////        if (sectionIsUse) {
////            CSPlistModel *plistModel = [[CSPlistModel alloc] init];
////            plistModel.itemArray = [NSMutableArray array];
////            
////            plistModel.isUsed = sectionIsUse;
////            plistModel.headerDes = sectionDic[kHeaderDes];
////            plistModel.footerDes = sectionDic[kFooterDes];
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
//        }
//    }
//    return outArray;
    

-(NSArray *)cellList
{
     NSArray *sectionArray ;
    sectionArray = [self nameWithArray:@"more.plist"];
    
    return sectionArray;
}

/**
 loadGroupPlistFile

 @param plistName plistName description
 @return return value description
 */


@end
