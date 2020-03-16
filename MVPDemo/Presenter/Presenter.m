//
//  Presenter.m
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter

- (instancetype)initWithAttachView:(id)view{
    if (self = [self init]) {
        self.attachView = view;
        [self fetchData];
    }
    return self;
}

- (void)fetchData{
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < [ViewController getDataArr].count; i++) {
        Model *model = [[Model alloc] initWithCellType:nil titleStr:[ViewController getDataArr][i]];
        [dataArray addObject:model];
    }
    [self.attachView userViewDataSource:dataArray];
}

- (void)confirmClicked:(Model *)model{
    [self.attachView clickedSuccess:model.titleStr];
}

@end
