//
//  GlasghmpfbzPlistload.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "secondLevelPlist.h"
@interface GlasghmpfbzPlistload : NSObject

@property (nonatomic, copy) NSString *title;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *subtitle;    //  sectionfooter描述文字
@property (nonatomic, copy) NSString *groupTitle;    //  sectionfooter描述文字
@property (nonatomic, strong) NSArray *groupArray;    //  每组的item数组<CSPlistItemModel>
@property (nonatomic, strong) NSArray *itemsArray;    //  每组的item数组<CSPlistItemModel>
@property (nonatomic,strong) secondLevelPlist *actionList;

- (NSString*)filePath:(NSString*)fileName;

+ (NSArray *)loadglsgPlistFile:(NSString *)plistName;

-(instancetype)initWithDic:(NSDictionary*)dict;

+(instancetype)glasgWithDic:(NSDictionary*)dict;


@end
