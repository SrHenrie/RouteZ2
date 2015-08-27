//
//  CustomerProfileTableViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/24/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@class Customer;

static NSString * const CustomerKey = @"customer";

@interface CustomerProfileTableViewController : UITableViewController

@property(strong, nonatomic) Customer *customer;

- (void)updateWithCustomer: (Customer *)customer;

@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSString *phoneNumber1;
@property(strong, nonatomic) NSString *phoneNumber2;
@property(strong, nonatomic) NSString *streetAddress;
@property(strong, nonatomic) NSString *city;
@property(strong, nonatomic) NSString *state;
@property(strong, nonatomic) NSString *zip;
@property(strong, nonatomic) NSString *email;
@property(strong, nonatomic) NSString *accountNotes;




@end
