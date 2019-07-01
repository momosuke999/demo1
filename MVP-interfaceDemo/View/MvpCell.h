//
//  MvpCell.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#ifndef MvpCell_h
//#define MvpCell_h

//Set Top and Center View 

#import "MvpPresenter.h"
#import <UIKit/UIKit.h>
//#import "MvpModel.h"


@interface MvpCell: UITableViewCell

//@property (nonatomic, strong) MvpModel * mvpM;

//@property (nonatomic) MvpPresenter *presenter;
@property(nonatomic,strong) UILabel * filmNameLabel;
@property(nonatomic,strong) UILabel * filmNameEnLabel;
@property(nonatomic,strong) UIImageView * filmIconLabel;


@end




