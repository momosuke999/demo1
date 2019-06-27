//
//  MvpTextPresenter.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "MvpTextPresenter.h"


@implementation MvpTextPresenter

-(instancetype)initWithView:(UIView<MvpInterfaceProtocol> *)view{
    if(self = [self init]){
        self.view = view;
    }
    return self;
}

-(void)presentWithModel:(MvpModel *)model viewController:(UIViewController *)viewController{
    self.film = model;
    self.viewController = viewController;
    [self present];
    
}
-(void)present{
    [self.view setText:self.film.title];
  //  [self.view setText:self.film.original_title];
}


@end
