//
//  MvpPresenter.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#import "MvpModel.h"
#import "MvpViewProtcol.h"
//#import "dataSourceModel.h"
#import <UIKit/UIKit.h>

@interface MvpPresenter:NSObject<UITableViewDataSource, UITableViewDelegate, MvpInterfaceProtocol>

@property(nonatomic,weak) IBOutlet UITableView *view;
@property(nonatomic, weak)IBOutlet UIViewController * viewController;
@property(nonatomic,strong) NSArray * myDataArray;
-(instancetype)initWithView:(UITableView *)view;
-(void)loadData;
//-(void)presentWithModel:(dataSourceModel*)model viewController:(UIViewController *)viewController;

@end
