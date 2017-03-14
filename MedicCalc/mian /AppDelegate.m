//
//  AppDelegate.m
//  MedicCalc
//
//  Created by Jonnyqian on 2016/12/13.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self loadPlist];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)loadPlist
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
//     NSLog(@"paths：%@",paths);
//     NSLog(@"documentsDirectory：%@",documentsDirectory);
    
    
    NSString *storePath = [NSString stringWithFormat:@"%@/more.plist",documentsDirectory];
//    NSLog(@"storePath：%@",storePath);
    
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *defaultStorePath = [[NSBundle mainBundle] pathForResource:@"more"
                                                                 ofType:@"plist"];
//    NSLog(@"defaultStorePath：%@",defaultStorePath);

    
//    NSString *myFilePath = [[NSBundle mainBundle] pathForResource:@"more"
//                                                           ofType:@"plist"];
//    NSString *myFileContent=[NSString stringWithContentsOfFile:myFilePath encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"bundel file path: %@ \nfile content:%@",myFilePath,myFileContent);
//    
    
    
    if (![fileManager fileExistsAtPath:storePath])
    {
        //如果目录不存在 需要重新创建
        if (![fileManager fileExistsAtPath:[storePath stringByDeletingLastPathComponent]]) {
            [fileManager createDirectoryAtPath:[storePath stringByDeletingLastPathComponent] withIntermediateDirectories:NO attributes:nil error:nil];
        }
        
        if ([fileManager copyItemAtPath:defaultStorePath toPath:storePath error:nil])
        {
            NSLog(@"OK");
        }
    }

}

@end
