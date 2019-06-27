//
//  TextViewController.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextViewController .h"
#import <UIKit/UIKit.h>

@interface TextViewController()
@property(nonatomic,weak)IBOutlet UITextView * filmnameView;
@end



@implementation TextViewController

-(void)awakeFromNib{
    [super awakeFromNib];
    self.presenter = [MvpTextPresenter new];
    self.presenter.view = self;
    self.presenter.viewController = self;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.presenter present];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)setText:(NSString*)film{
    self.filmnameView.text = film;
}
@end
