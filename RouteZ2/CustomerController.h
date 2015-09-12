//
//  CustomerController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/12/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"
#import "AppointmentController.h"
#import "Appointments.h"

@interface CustomerController : NSObject

@property (nonatomic, strong, readonly) NSArray *customers;

+ (CustomerController *) sharedInstance;

- (void)resetAllCustomersFromParse:(void (^)(NSError *error))completion;

- (void)updateCustomersFromParseLocalDatastore;

- (void)addCustomer:(NSString *)firstName text:(NSString *)lastName text:(NSString *)phoneNumber1 text:(NSString *)phoneNumber2 text:(NSString *)streetAddress text:(NSString *)city text:(NSString *) state text:(NSString *) zip text:(NSString *)email text:(NSString *)accountNotes;

- (void)updateCustomer:(Customer *)customer;

- (void)removeCustomer:(Customer *)customer;


@end
