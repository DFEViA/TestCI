
//
//  TableViewCell.m
//  Ch05.07
//
//  Created by Ibokan on 15/8/28.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "TableViewCell.h"
#import "UITableViewCell+setInfo.h"

@interface TableViewCell ()

@property (strong, nonatomic)UIImageView *imageV;
@property (strong, nonatomic)UILabel *nlabel;
@property (strong, nonatomic)UILabel *tLabel;
@property (strong, nonatomic)UILabel *dLabel;

@end
@implementation TableViewCell

//从storyboard上拖出来的控件会走这个方法，不会强制改变frame,需要对其属性translatesAutoresizingMaskIntoConstraints = YES
- (void)awakeFromNib {
    // Initialization code
    //self.tLabel.translatesAutoresizingMaskIntoConstraints = YES;
}
//重写便利初始化函数
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self viewsInit];
    }
    return self;
}
//初始化控件
- (void)viewsInit{
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
    //cell的view是contentView
    [self.contentView addSubview:self.imageV];
    self.nlabel = [[UILabel alloc]initWithFrame:CGRectMake(90, 20, 100, 30)];
    [self.contentView addSubview:self.nlabel];
    self.dLabel = [[UILabel alloc]initWithFrame:CGRectMake(230, 20, 80, 30)];
    [self.contentView addSubview:self.dLabel];
    self.tLabel = [[UILabel alloc]initWithFrame:CGRectMake(90, 70, 200, 30)];
    self.tLabel.backgroundColor = [UIColor grayColor];
    //显示多少行
    self.tLabel.numberOfLines = 0;
    [self.contentView addSubview:self.tLabel];
    
}
- (void)setInfo:(NSDictionary *)dic{
    self.imageV.image = [UIImage imageNamed:dic[@"image"]];
    self.nlabel.text = dic[@"name"];
    self.tLabel.text = dic[@"text"];
    self.dLabel.text = dic[@"date"];
    //注意不要用属性点和结构体点进行赋值
    CGRect frame = self.tLabel.frame;
    frame.size.height = self.contentView.frame.size.height - 80;
    self.tLabel.frame = frame;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
