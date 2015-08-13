//
//  CustomerController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/12/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"

@interface CustomerController : NSObject

@property (nonatomic, strong, readonly) NSArray *customers;

+ (CustomerController *) sharedInstance;

- (void)addCustomerWithFirstName:(NSString *)firstName lastName:(NSString *)lastName phoneNumber1:(NSString *)phoneNumber1 phoneNumber2:(NSString *)phoneNumber2 address:(NSString *)address email:(NSString *)email notes:(NSString *)notes;

- (void)updateCustomer:(Customer *)customer;

- (void)removeCustomer:(Customer *)customer;


@end
