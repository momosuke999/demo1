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
#import "dataSourceModel.h"

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
    if(self = [super init]){
        self.myDataArray = [dataSourceModel new];
       [self present];
    }
    return self;
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
    return self.myDataArray.myDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    MvpTextCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"textViewCell" forIndexPath:indexPath];
    cell.presenter.film = self.myDataArray.myDataArray[indexPath.row];
    return cell;
}



@end
