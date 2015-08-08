//
//  AddCustomerDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/4/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "AddCustomerDataSource.h"
#import "AddCustomerViewController.h"
#import "AddCustomerTableViewCell.h"

@implementation AddCustomerDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"addCustomerCell"];
    return cell;
}
@end
