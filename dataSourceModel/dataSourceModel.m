//
//  dataSourceModel.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/27.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "dataSourceModel.h"

@implementation dataSourceModel

-(instancetype) init{
    self = [super init];
    if(self){
    NSURL * url = [NSURL URLWithString:@"https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%B1%B1%BE%A9&start=0&count=100&client=&udid="];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSArray *  subjectsArray = dict[@"subjects"];
        NSMutableArray *dataArray = [[NSMutableArray alloc] init];
        // dataArray = [[NSMutableArray alloc] init];
        for (NSDictionary * tempDict in subjectsArray) {
            MvpModel * model = [MvpModel mvpModelWithDict:tempDict];
            [dataArray addObject:model];
        }
        self.myDataArray = dataArray;
        
    }];
    }
    

    return self;
}



@end
