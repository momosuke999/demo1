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
#import "MvpCell.h"
#import "ViewController.h"
#import "MvpViewProtcol.h"

//#import "dataSourceModel.h"

//isolated for data Source

@implementation MvpPresenter




-(instancetype) init{

    if(self = [super init]){
    [self loadData];
        NSLog(@"----%@------", self.myDataArray);
      //  [self present];
    }
    return self;
}



-(void)loadData{
    
 
    NSString * const url = @"https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%B1%B1%BE%A9&start=0&count=100&client=&udid=";
    
    NSURL * jsonURL = [NSURL URLWithString:url];
    
    NSURLSession * session = [NSURLSession sharedSession];
    
    NSURLSessionTask * msgtask = [session dataTaskWithURL:jsonURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *retString = [NSString stringWithUTF8String:[data bytes]];
        NSData * getJsonData = [retString dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary * getDict = [NSJSONSerialization JSONObjectWithData:getJsonData options:kNilOptions error:nil];
        NSArray *  subjectsArray = getDict[@"subjects"];
        for (NSDictionary * tempDict in subjectsArray) {
            MvpModel* model = [MvpModel mvpModelWithDict:tempDict];
            [self.myDataArray addObject:model];
        }
    }];
     [msgtask resume];
    
    
     
    /*
    
    NSString * pathString =  [[NSBundle mainBundle]pathForResource:@"data" ofType:@"txt"];
    NSString *textFieldContents=[NSString stringWithContentsOfFile:pathString encoding:NSUTF8StringEncoding error:nil];
    NSData * getJsonData = [textFieldContents dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary * getDict = [NSJSONSerialization JSONObjectWithData:getJsonData options:kNilOptions error:nil];
    //  NSLog(@"--textFieldContents---%@-----",getDict);
    
    NSArray *  subjectsArray = getDict[@"subjects"];

    // dataArray = [[NSMutableArray alloc] init];
    for (NSDictionary * tempDict in subjectsArray) {
        MvpModel* model = [MvpModel mvpModelWithDict:tempDict];
        [self.myDataArray addObject:model];
    }*/
}



-(NSMutableArray*) myDataArray{
    if  (!_myDataArray){
        _myDataArray = [NSMutableArray arrayWithCapacity:10];
    }
    return _myDataArray;
}






@end
