//
//  MvpModel.m
//  MVP-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/6/21.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MvpModel.h"

@implementation MvpModel

+(instancetype)mvpModelWithDict:(NSDictionary *) Dictionary{
    MvpModel * MvpM = [[self alloc]init];
    [MvpM setValuesForKeysWithDictionary:Dictionary];
    return MvpM;
}

-(void)setValue:(id)value forUndifiedKey:(NSString *)key{

}
@end

@implementation data_casts


@end


@implementation data_directors


@end


@implementation data_rating


@end
