//
//  TodaysRouteViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 7/31/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "TodaysRouteViewController.h"
#import <Parse/Parse.h>

@interface TodaysRouteViewController ()


@end

@implementation TodaysRouteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
