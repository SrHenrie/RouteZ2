//
//  AddCustomerViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/2/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "AddCustomerTableViewCell.h"
@class Customer;

@interface AddCustomerViewController : UIViewController

@property (strong, nonatomic)Customer *customer;

@end
