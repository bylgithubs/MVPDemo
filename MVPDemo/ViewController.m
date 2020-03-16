//
//  ViewController.m
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "ViewController.h"
#import "Controller.h"

static NSArray *dataArr;
static NSDictionary *dataDic;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

+(void)setData{
    dataArr = @[@"data1",@"data2",@"data3",@"data4"].mutableCopy;
    dataDic = @{dataArr[0]:@"first",dataArr[1]:@"second",dataArr[2]:@"third",dataArr[3]:@"forth"};
}

+(NSArray *)getDataArr{
    return dataArr;
}

@end
