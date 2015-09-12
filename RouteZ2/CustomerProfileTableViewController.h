//
//  CustomerProfileTableViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/24/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Customer.h"
#import "CustomerController.h"
#import "AddAppointmentTableViewController.h"
#import "ViewHistoryViewController.h"
#import "Appointments.h"
#import "AppointmentController.h"
@class Customer;

static NSString * const CustomerKey = @"customer";

@interface CustomerProfileTableViewController : UITableViewController

//@property (strong, nonatomic) Appointments *appointments;

@property(strong, nonatomic) Customer *customer;

- (void)updateWithCustomer: (Customer *)customer;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
@end
