//
//  ViewHistoryViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/11/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppointmentController.h"
#import "Appointments.h"
#import "AddAppointmentTableViewController.h"

@interface ViewHistoryViewController : UIViewController

@property (strong, nonatomic) Customer *customer;
@property (strong, nonatomic) Appointments *appointments;

@end
