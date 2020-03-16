//
//  Presenter.h
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "Model.h"
#import "Controller.h"

NS_ASSUME_NONNULL_BEGIN

@interface Presenter : NSObject

@property (nonatomic, weak) id attachView;

- (instancetype)initWithAttachView:(id)view;
- (void)fetchData;
- (void)confirmClicked:(Model *)model;

@end

NS_ASSUME_NONNULL_END
