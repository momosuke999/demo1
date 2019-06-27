//
//  MvpTextPresenter.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


#import "MvpViewProtcol.h"
#import "MvpModel.h"
#import <UIKit/UIKit.h>
@protocol TextPresenterProtocol

-(void)setText: (NSString *) film;

@end

@interface MvpTextPresenter: NSObject <MvpInterfaceProtocol>

@property (nonatomic, weak) NSObject <TextPresenterProtocol> *view;
@property(nonatomic, weak) UIViewController * viewController;
@property (nonatomic) MvpModel *film;

-(instancetype)initWithView: (UIView<MvpInterfaceProtocol>*) view;
-(void)presentWithModel:(MvpModel*)model viewController:(UIViewController *)viewController;
-(void)present;
@end
/* MvpTextPresenter_h */
