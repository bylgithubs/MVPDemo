//
//  TableViewCell.h
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property(nonatomic,strong) Model *model;

- (void)configCell;

@end

NS_ASSUME_NONNULL_END
