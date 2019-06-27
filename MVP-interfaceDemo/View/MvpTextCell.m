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

@end

@implementation MvpTextCell

-(void)awakeFromNib{
    [super awakeFromNib];
    self.presenter = [[MvpTextPresenter alloc] initWithView:self];
}

-(void)setText:(NSString *)film{
    self.filmNameLabel.text = film;
}
@end
