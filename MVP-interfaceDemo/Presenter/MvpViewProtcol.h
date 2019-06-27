//
//  MvpViewProtcol.h
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/24.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "MvpModel.h"
#import <UIKit/UIKit.h>

@protocol MvpInterfaceProtocol


-(void)setView:(NSObject*) view;
-(void)setViewController:(UIViewController*) viewController;

@optional
//-(void)getViewData:(NSArray<MvpModel *> *) data;
-(void)present;
-(void)presentWithModel:(id)model viewController:(UIViewController*)viewController;



//- (void)onGetResponseFilmsEntity:(NSArray<MvpModel*>*)filmsEntity fail:(NSInteger) errorCode des:(NSString *)des;

@end




