//
//  Model.m
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "Model.h"

@implementation Model

- (instancetype)initWithCellType:(NSString *)type titleStr:(NSString *)titleStr{
    if (self = [super init]) {
        _type     = type;
        _titleStr = titleStr;
    }
    return self;
}

@end
