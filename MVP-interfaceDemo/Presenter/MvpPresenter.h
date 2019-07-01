//
//  MvpPresenter.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "MvpViewProtcol.h"
#import "MvpCell.h"
#import <UIKit/UIKit.h>

@interface MvpPresenter:NSObject
@property(nonatomic, strong)NSMutableArray * myDataArray;
-(void)loadData;
//@property(nonatomic, weak)id<MvpInterfaceProtocol> delegate;

@end
