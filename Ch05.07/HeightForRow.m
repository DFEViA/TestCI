//
//  HeightForRow.m
//  Ch05.07
//
//  Created by Ibokan on 15/8/28.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "HeightForRow.h"


@implementation HeightForRow
+ (CGFloat)heightForRowWithDic:(NSDictionary *)dic{
    NSString *str = dic[@"text"];
   /*
   需要绘制的文本所占据的矩形大小
    
    CGSize 给出的文本所能占据的矩形的最大值
    options 计算文本所占据大小的时候所用选项
    attributes 计算时文本的属性 字体字号大小
    context 上下文
   */
    CGRect rect = [str boundingRectWithSize:CGSizeMake(200, 1000) options: NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];
    CGFloat height = rect.size.height;
    return height+100;
}
@end
