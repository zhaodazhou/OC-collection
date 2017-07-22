//
//  MBPHUDViewController.m
//  OC collection
//
//  Created by dazhou on 2017/7/22.
//  Copyright © 2017年 dazhou. All rights reserved.
//

#import "MBPHUDViewController.h"
#import "UIView+MBProgress.h"

@interface MBPHUDViewController ()

@end

@implementation MBPHUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)showProcess:(id)sender {
    [self.view showProgress];
}

- (IBAction)hideProcess:(id)sender {
    [self.view removeProgress];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
