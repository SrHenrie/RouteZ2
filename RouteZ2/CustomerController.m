//
//  CustomerController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/12/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "CustomerController.h"

@interface CustomerController ()

@end

@implementation CustomerController

+ (CustomerController *)sharedInstance {
    static CustomerController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CustomerController alloc] init];
        [sharedInstance loadCustomersFromParse];
    });
    return sharedInstance;
}

-(void) loadCustomersFromParse{
    
    PFQuery *query = [Customer query];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (Customer *customer in objects) {
            [customer pin];
        }
    }];
}

- (NSArray *)customers {
        
        PFQuery *query = [Customer query];
        [query fromLocalDatastore];
        return [query findObjects];
        
}

- (void)addCustomerWithFirstName:(NSString *)firstName lastName:(NSString *)lastName phoneNumber1:(NSString *)phoneNumber1 phoneNumber2:(NSString *)phoneNumber2 address:(NSString *)address email:(NSString *)email notes:(NSString *)notes{
        
        Customer *customer = [Customer object];
        
        customer.firstName = firstName;
        customer.lastName = lastName;
        customer.phoneNumber1 = phoneNumber1;
        customer.phoneNumber2 = phoneNumber2;
        customer.address = address;
        customer.email = email;
        customer.notes = notes;
        
        [customer pinInBackground];
        [customer save];
        
    }
    - (void)removeCustomer:(Customer *)customer {
        
        [customer unpinInBackground];
        [customer deleteInBackground];
    }
    
    - (void)updateCustomer:(Customer *)customer {
        
        [customer pinInBackground];
        [customer save];
        
    }


@end
