//
//  ViewHistoryDetailTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/11/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Appointments.h"
#import "AppointmentController.h"
#import "ViewHistoryViewController.h"

@interface ViewHistoryDetailTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextView *appointmentNotesTextView;
@property (nonatomic, strong) Appointments *appointments;

- (void) updateWithAppointment:(Appointments *)appointments;

@end
