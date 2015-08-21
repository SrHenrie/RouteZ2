//
//  CustomerDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/1/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "CustomerDataSource.h"
#import "CustomerTableViewCell.h"
#import "CustomerViewController.h"
#import "CustomerController.h"


@implementation CustomerDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [CustomerController sharedInstance].customers.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customerTableViewCell"];
    
    Customer *customer = [CustomerController sharedInstance].customers[indexPath.row];
    
    cell.customerAddressLabel.text = customer.streetAddress;
    cell.customerNameLabel.text = [NSString stringWithFormat:@"%@ %@", customer.firstName, customer.lastName];
    
    return cell;
    
}

@end
