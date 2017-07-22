//
//  ViewController.m
//  OC collection
//
//  Created by dazhou on 2017/7/19.
//  Copyright © 2017年 dazhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView * mTableView;
@property (nonatomic, strong) NSMutableArray * dataArr;
@property (nonatomic, strong) NSMutableArray * destCtlArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID = @"cellID";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    NSString * text = [self.dataArr objectAtIndex:indexPath.row];
    cell.textLabel.text = text;
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * str = [self.destCtlArr objectAtIndex:indexPath.row];
    Class obj = NSClassFromString(str);
    UIViewController * ctl = [[obj alloc] init];
    
    [self.navigationController pushViewController:ctl animated:YES];
}

- (void)setupView
{
    [self.view addSubview:self.mTableView];
}

- (NSMutableArray *)dataArr
{
    if (_dataArr) {
        return _dataArr;
    }
    
    _dataArr = [NSMutableArray arrayWithObjects:
                @"MBProgressHUD", nil];
    
    return _dataArr;
}

- (NSMutableArray *)destCtlArr
{
    if (_destCtlArr) {
        return _destCtlArr;
    }
    
    _destCtlArr = [NSMutableArray arrayWithObjects:
                @"MBPHUDViewController", nil];
    
    return _destCtlArr;
}

- (UITableView *)mTableView
{
    if (_mTableView) {
        return _mTableView;
    }
    
    _mTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _mTableView.dataSource = self;
    _mTableView.delegate = self;
    
    return _mTableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
