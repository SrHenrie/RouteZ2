//
//  ViewHistoryDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/11/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "ViewHistoryDataSource.h"
#import "ViewHistoryViewController.h"
#import "ViewHistoryCustomerNameTableViewCell.h"
#import "ViewHistoryDetailTableViewCell.h"

@implementation ViewHistoryDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ViewHistoryCustomerNameTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customerNameCell"];
    return cell;
    
}


@end
