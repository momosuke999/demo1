//
//  MvpCell.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


//#import <Foundation/Foundation.h>
#import "MvpCell.h"
//#import <UIKit/UIKit.h>
//#import "YYWebImage.h"
#import "Masonry.h"


@implementation MvpCell




@end




/*
 -(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
 self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
 if(self){
 [self createControl];
 }
 return self;
 }
 
 -(void)setMvpM:(MvpModel *)mvpM{
 
 
 _filmNameLabel.text = mvpM.title;
 
 }
 
 
 
 -(void) createControl{
 [self createTopView];
 
 }
 
 
 -(void)createTopView{
 UIView *topView = [[UIView alloc]init];
 [self.contentView addSubview:topView];
 [topView mas_makeConstraints:^(MASConstraintMaker * make) {
 make.left.equalTo(self.contentView).offset(0);
 make.right.equalTo(self.contentView).offset(0);
 make.height.mas_equalTo(40);
 make.top.equalTo(self.contentView).offset(0);
 
 }];
 
 topView.backgroundColor = UIColor.blackColor;
 
 //film title
 UILabel * titleLabel = [[UILabel alloc] init];
 [topView addSubview:titleLabel];
 [titleLabel mas_makeConstraints:^(MASConstraintMaker * make){
 make.left.equalTo(topView).offset(0);
 make.right.equalTo(topView).offset(0);
 make.height.mas_equalTo(30);
 make.top.equalTo(topView).offset(5);
 
 }];
 titleLabel.font = [UIFont systemFontOfSize:14];
 titleLabel.textColor = [UIColor whiteColor];
 _filmNameLabel = titleLabel;
 
 }
 */




/*


-(void)layoutSubviews{
    [super layoutSubviews];
    
    [self.filmNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(0);
        make.right.equalTo(self.contentView).offset(0);
    }];
}

-(UILabel*)filmNameLabel{
    if(_filmNameLabel ==nil){
        _filmNameLabel = [[UILabel alloc]init];
        _filmNameLabel.font = [UIFont systemFontOfSize:14];
        _filmNameLabel.textColor = [UIColor blackColor];
        
    }
    return _filmNameLabel;
}
*/
