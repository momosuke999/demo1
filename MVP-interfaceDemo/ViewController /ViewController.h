//
//  ViewController.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "MvpViewProtcol.h"
#import "MvpPresenter.h"

@interface ViewController : UIViewController

@property (nonatomic) MvpPresenter *presenter;



//@property(nonatomic, strong) UITableView * TableView;
//@property(nonatomic) MvpPresenter * presenter;
@end

