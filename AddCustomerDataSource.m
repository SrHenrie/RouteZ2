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
#import "HistoryTableViewCell.h"
#import "NextAppointmentTableViewCell.h"

@implementation AddCustomerDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 6;
    }
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AddCustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"addCustomerCell"];
//    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"addAppointmentCell"];
//    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"viewHistoryCell"];
//    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"nextAppointmentCell"];
    
    if (indexPath.row == 0) {
        cell.customerInfoLabel.text = @"Hello World";
               return cell;
    }if (indexPath.row == 1){
        cell.customerInfoLabel.text = @"Hi Sarah";
        return cell;
    }if (indexPath.section == 2){
        return cell;
    }else
        return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}


@end
