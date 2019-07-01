//
//  MvpTextCell.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "MvpTextCell.h"

@interface MvpTextCell ()
@property(nonatomic,weak) IBOutlet UILabel * filmNameLabel;
@property(nonatomic,weak) IBOutlet UILabel * filmNameEnLabel;


@end

@implementation MvpTextCell

-(void)awakeFromNib{
    [super awakeFromNib];
    self.presenter = [[MvpTextPresenter alloc] initWithView:self];
}

-(void)setTitle:(NSString *)title{
    self.filmNameLabel.text = title;
}

-(void)setTitleEn:(NSString*)original_title{
    self.filmNameEnLabel.text = original_title;
}


//-(void)setView:(NSObject *)view{
  //
//}
@end
