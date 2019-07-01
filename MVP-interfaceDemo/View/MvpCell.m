//
//  MvpCell.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


//#import <Foundation/Foundation.h>
#import "MvpCell.h"
#import <UIKit/UIKit.h>
//#import "YYWebImage.h"
#import "Masonry.h"





@implementation MvpCell

//-(void)awakeFromNib{
   // [super awakeFromNib];
   // self.presenter = [[MvpPresenter alloc] initWithView:self];
//}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self setupUI];
    
    }
    return self;
}


- (void)layoutSubviews{
    
    [super layoutSubviews];

    
    [self.filmNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(0);
        make.right.equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.contentView).offset(5);
    }];
    
    [self.filmNameEnLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    //    make.left.equalTo(self.contentView).offset(0);
        make.right.equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.contentView).offset(5);
    }];
    

        self.filmIconLabel.opaque = YES;
        [self.contentView addSubview:self.filmIconLabel];
        self.filmIconLabel.frame =CGRectMake(5, 100, 70, 100);

    
}



-(UILabel*)filmNameLabel{
    if(_filmNameLabel == nil){
        _filmNameLabel = [[UILabel alloc] init];
        _filmNameLabel.text = @"aa";
        _filmNameLabel.font = [UIFont systemFontOfSize: 14];
        _filmNameLabel.textColor = [UIColor blackColor];
    }
    return _filmNameLabel;
}


-(UILabel*)filmNameEnLabel{
    if(_filmNameEnLabel == nil){
        _filmNameEnLabel = [[UILabel alloc] init];
        _filmNameEnLabel.text = @"aa";
        _filmNameEnLabel.font = [UIFont systemFontOfSize: 14];
        _filmNameEnLabel.textColor = [UIColor blackColor];
    }
    return _filmNameEnLabel;
}

-(UIImageView*)filmIconLabel{
    if(_filmIconLabel==nil){
         _filmIconLabel = [[UIImageView alloc] init];
    }
    return _filmIconLabel;
}


-(void)setupUI{
    [self.contentView addSubview:self.filmNameLabel];
    [self.contentView addSubview:self.filmNameEnLabel];
    [self.contentView addSubview:self.filmIconLabel];
}

@end

