//
//  GlasghmpfbzVC.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/3/10.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlasghmpfbzPlist: NSObject

@property (nonatomic, strong) NSArray *groupArray;    //  每组的item数组<CSPlistItemModel>

- (NSString*)filePath:(NSString*)fileName;

@end
