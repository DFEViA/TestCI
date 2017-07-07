//
//  RecentManager.m
//  Ch-05-03
//
//  Created by Ibokan on 15/8/25.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "RecentManager.h"

@implementation RecentManager
+(instancetype)share
{
    static RecentManager * manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[RecentManager alloc]init];
    });
    return manager;
}
-(void)getRecentSuccess:(GetRecent)block
{
    NSString * path = [[NSBundle mainBundle] pathForResource:@"Recent" ofType:@"plist"];
    NSArray * arr = [NSArray arrayWithContentsOfFile:path];
    block(arr);
}
@end
