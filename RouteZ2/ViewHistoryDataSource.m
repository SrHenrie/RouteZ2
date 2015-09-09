//
//  ViewHistoryDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/11/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "ViewHistoryDataSource.h"
#import "ViewHistoryViewController.h"
#import "ViewHistoryDetailTableViewCell.h"
#import "AppointmentController.h"
#import "Appointments.h"

@implementation ViewHistoryDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
//        return [AppointmentController sharedInstance].appointments.count;
    }

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ViewHistoryDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appointmentsCell"];
        return cell;
    
}


@end
