//
//  ViewController.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "ViewController.h"
#import "dataSourceModel.h"
#import "MvpCell.h"
#import "MvpModel.h"
#import "MvpPresenter.h"

static NSString * const reuserId = @"reuserId";

@interface ViewController ()<UITableViewDelegate, MvpInterfaceProtocol>

@property(nonatomic, strong) UITableView * tableView;

@property(nonatomic, strong) NSMutableArray * myDataArray;

@property(nonatomic, strong) MvpPresenter * presenter;

@property(nonatomic, strong) dataSourceModel * dataSource;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.presenter = [[MvpPresenter alloc]init];
//    __weak typeof (self)weakSelf = self;
    self.dataSource = [[dataSourceModel alloc]initWithIdentifier:reuserId configureBlock:^(MvpCell * cell, MvpModel* model, NSIndexPath * indexPath){
        cell.filmNameLabel.text = model.title;
        cell.filmNameEnLabel.text = model.original_title;
        
    /*    NSDictionary * imageURLs =model.images;
        NSString * imageURL =[imageURLs objectForKey:@"small"];
        //NSData *data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:imageURL]];
        NSURL * imageurl = [NSURL URLWithString:imageURL];
        UIImage * image =[UIImage imageWithData: [NSData dataWithContentsOfURL:imageurl]];
        cell.filmIconLabel.image = image;*/
    }];
    [self.dataSource addMyDataArray:self.presenter.myDataArray];
    self.view.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self.dataSource;
}


-(UITableView*) tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        [_tableView registerClass:[MvpCell class] forCellReuseIdentifier:reuserId];
    }
    return _tableView;
}


-(void)reloadDataFromUI{
    [self.dataSource addMyDataArray:self.presenter.myDataArray];
    [self.tableView reloadData];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}






@end


