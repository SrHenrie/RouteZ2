//
//  AddCustomerViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/2/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "AddCustomerTableViewCell.h"

@interface AddCustomerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, addCustomerDelegate>

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * phoneNumber1;
@property (nonatomic, retain) NSString * phoneNumber2;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * notes;

@end
