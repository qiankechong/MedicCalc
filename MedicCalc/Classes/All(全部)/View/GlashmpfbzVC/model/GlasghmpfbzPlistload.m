//
//  GlasghmpfbzPlistload.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "GlasghmpfbzPlistload.h"

#define kgroupTitle @"groupTitle"
#define kitems      @"items"

@implementation GlasghmpfbzPlistload

-(NSString *)filePath:(NSString *)fileName
{
    NSArray* myPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* myDocPath = [myPaths objectAtIndex:0];
    NSString* filePath = [myDocPath stringByAppendingPathComponent:fileName];
    return filePath;

}

-(instancetype)initWithDic:(NSDictionary *)dict
{
    if (self) {
//        [self setValuesForKeysWithDictionary:dict];
        self.groupTitle = dict[kgroupTitle];
        self.itemsArray = dict[kitems];
    }
    return self;
    
}

+(instancetype)glasgWithDic:(NSDictionary *)dict
{
    return [[self alloc]initWithDic:dict];
}


+(NSArray *)loadglsgPlistFile:(NSString *)plistName
{    
    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:[NSString stringWithFormat:@"/%@",plistName]];
    NSLog(@"str:%@",str);
    
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
    
    
    NSLog(@"[plistArray count]:%ld",[plistArray count]);
    
    NSMutableArray *outArray = [NSMutableArray array];
    
    for (NSDictionary *sectionDic in plistArray)
    {
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
    
//    outArray = plistArray;
    return plistArray;


}



@end
