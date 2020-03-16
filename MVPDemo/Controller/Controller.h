//
//  Controller.h
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Controller : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataArr;

- (void)startMVP;
- (void)userViewDataSource:(NSMutableArray *)data;
- (void)clickedSuccess:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
