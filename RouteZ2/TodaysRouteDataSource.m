//
//  TodaysRouteDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/1/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "TodaysRouteDataSource.h"
#import "TodaysRouteViewController.h"
#import "TodaysRouteCellTableViewCell.h"

@implementation TodaysRouteDataSource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"todaysRouteCell"];
    return cell;
}

@end
