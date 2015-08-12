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
    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"addAppointmentCell"];
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"viewHistoryCell"];
    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"nextAppointmentCell"];
   

        if (indexPath.section == 0 && indexPath.row == 0) {
            cell.customerInfoLabel.text = @"First Name";
            return cell;
    } if (indexPath.section == 0 && indexPath.row == 1){
        cell.customerInfoLabel.text = @"Last Name";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 2){
        cell.customerInfoLabel.text = @"Phone #1";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 3){
        cell.customerInfoLabel.text = @"Phone #2";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 4){
        cell.customerInfoLabel.text = @"Address";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==5) {
        cell.customerInfoLabel.text = @"Email";
        return cell;
    }
    if (indexPath.section == 1 && indexPath.row == 0) {
    return cell1;
    } if (indexPath.section == 2 && indexPath.row == 0){
    return cell2;
    }if (indexPath.section == 3 && indexPath.row == 0){
    return cell3;
    }else
        return cell3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}


@end
