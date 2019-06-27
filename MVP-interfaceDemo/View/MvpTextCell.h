//
//  MvpTextCell.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


//#import "MvpModel.h"

#import <UIKit/UIKit.h>
#import "MvpTextPresenter.h"

@interface MvpTextCell : UITableViewCell<MvpInterfaceProtocol>
@property (nonatomic) MvpTextPresenter *presenter;
@end

