//
//  RecentManager.h
//  Ch-05-03
//
//  Created by Ibokan on 15/8/25.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^GetRecent)(NSArray * arr);

@interface RecentManager : NSObject
+(instancetype)share;
-(void)getRecentSuccess:(GetRecent)block;
@end
