//
//  Controller.m
//  MVPDemo
//
//  Created by Civet on 2020/3/13.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "Controller.h"
#import "TableViewCell.h"
#import "Model.h"
#import "Presenter.h"
#import "ViewController.h"

@interface Controller ()

@property(nonatomic,strong) Presenter *presenter;

@end


@implementation Controller


- (void)viewDidLoad{
    [super viewDidLoad];
    [ViewController setData];
    self.view.backgroundColor = [UIColor grayColor];
    [self startMVP];
    NSLog(@"==============");
    
}

- (void)startMVP{
    _dataArr = [[NSMutableArray alloc] init];
    _presenter = [[Presenter alloc] initWithAttachView:self];
    
    [self initUI];
}

- (void)initUI{
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor blueColor];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (void)clickedSuccess:(NSString *)string{
    NSLog(@"clickedSuccess.........%@......",string);
}

- (void)userViewDataSource:(NSMutableArray *)data{
    self.dataArr = data;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    Model *model = self.dataArr[indexPath.row];
    cell.model = model;
    [cell configCell];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",model.titleStr];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Model *model = self.dataArr[indexPath.row];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:@"点击第%@行",model.titleStr] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alertView.tag = indexPath.row;
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        [self.presenter confirmClicked:_dataArr[alertView.tag]];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 66;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}
@end
