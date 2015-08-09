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
#import "AddAppointmentTableViewCell.h"

@implementation AddCustomerDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 6;
    }
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"addCustomerCell"];
    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"addAppointmentCell"];
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"viewHistoryCell"];
    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"nextAppointmentCell"];
    
    if (indexPath.section == 0) {
        return cell;
    }if (indexPath.section == 1){
        return cell1;
    }if (indexPath.section == 2){
        return cell2;
    }else
        return cell3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}


@end
