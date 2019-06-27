//
//  ViewController.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UITableView *tableView;
//@property (nonatomic, weak) IBOutlet UILabel *FilmNameLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.presenter = [[MvpPresenter alloc] initWithView: self.tableView];
    self.presenter.viewController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}






@end


