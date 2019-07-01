//
//  TextViewController.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/25.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextViewController .h"
#import "TextViewController.m"
#import <UIKit/UIKit.h>

@interface TextViewController()
@property(nonatomic,weak)IBOutlet UITextView * filmnameView;
@property(nonatomic,weak)IBOutlet UITextView * filmnameEnView;

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

-(void)setf:(NSString*)film{
    self.filmnameView.text = film;
}

-(void)setFilmnameView:(UITextView *)filmnameView{
    
}
@end
