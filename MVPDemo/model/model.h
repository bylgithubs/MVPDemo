//
//  Model.h
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

@property (nonatomic, assign) NSString *type;
@property (nonatomic, copy) NSString *titleStr;         /*row title*/
@property (nonatomic, assign) BOOL boolValue;           /*switch的值*/

- (instancetype)initWithCellType:(NSString *)type titleStr:(NSString *)titleStr;

@end

NS_ASSUME_NONNULL_END
