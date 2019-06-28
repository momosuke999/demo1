//
//  MvpPresenter.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MvpPresenter.h"
#import "MvpModel.h"
#import "MvpTextCell.h"
#import "ViewController.h"
#import "MvpViewProtcol.h"
//#import "dataSourceModel.h"

//isolated for data Source

@implementation MvpPresenter

/*

-(void)presentWithModel:(dataSourceModel*)model viewController:(UIViewController *)viewController{
    self.myDataArray = model;
    self.viewController = viewController;
    [self present];
}
*/


-(instancetype) init{

    if(self){
        [self loadData];
    //    [self present];
    }
    return self;
}




-(void)loadData{

    NSURL * url = [NSURL URLWithString:@"https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%B1%B1%BE%A9&start=0&count=100&client=&udid="];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSArray *  subjectsArray = dict[@"subjects"];
        NSMutableArray *dataArray = [[NSMutableArray alloc] init];
        for (NSDictionary * tempDict in subjectsArray) {
            MvpModel * model = [MvpModel mvpModelWithDict:tempDict];
            [dataArray addObject:model];
        }
       self.myDataArray = dataArray;
        
    }];
}


-(NSArray*) myDataArray{
    if  (!_myDataArray){
        _myDataArray = [[NSArray alloc]init ];
    }
    return _myDataArray;
}



- (void)present
{
    [self.view reloadData];
}


-(instancetype)initWithView:(UITableView*)view{
    
        if(self = [self init]){
            self.view = view;
            self.view.delegate = self;
            self.view.dataSource = self;
        }
    return self;
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.myDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    MvpTextCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"textViewCell" forIndexPath:indexPath];
    cell.presenter.film = self.myDataArray[indexPath.row];
    return cell;
}



@end
