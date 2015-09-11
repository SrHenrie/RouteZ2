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
    

        return [AppointmentController sharedInstance].appointments.count;
    }

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ViewHistoryDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appointmentsCell"];
    
    
    Appointments *appointments = [AppointmentController sharedInstance].appointments[indexPath.row];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM/dd/yyyy, hh:mm a"];
    NSString *dateString = [dateFormat stringFromDate:appointments.date];
    
    cell.dateLabel.text = dateString;
    cell.appointmentNotesTextView.text = appointments.appointmentNotes;
    
    return cell;
    
}


@end
