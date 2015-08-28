//
//  CustomerController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/12/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "CustomerController.h"

@interface CustomerController ()

@property (nonatomic, strong) NSArray *customers;

@end

@implementation CustomerController

+ (CustomerController *)sharedInstance {
    static CustomerController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CustomerController alloc] init];
        [sharedInstance loadCustomersFromParse: nil];
    });
    return sharedInstance;
}

-(void) loadCustomersFromParse:(void (^)(NSError *error))completion{
    
    PFQuery *query = [Customer query];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (Customer *customer in objects) {
            [customer pin];
        }
        if (completion) {
            completion(error);
        }
    }];
}


- (void)resetAllCustomersFromParse:(void (^)(NSError *error))completion {
    [PFObject unpinAllInBackground:self.customers block:^(BOOL succeeded, NSError * _Nullable error) {
        [self loadCustomersFromParse: completion];
    }];
}


- (void)updateCustomersFromParseLocalDatastore {
    PFQuery *query = [Customer query];
    [query fromLocalDatastore];
    [query orderByAscending:@"firstName"];
    self.customers = [query findObjects];
}

- (void)addCustomer:(NSString *)firstName text:(NSString *)lastName text:(NSString *)phoneNumber1 text:(NSString *)phoneNumber2 text:(NSString *)streetAddress text:(NSString *)city text:(NSString *) state text:(NSString *) zip text:(NSString *)email text:(NSString *)accountNotes{
        
        Customer *customer = [Customer object];
        
        customer.firstName = firstName;
        customer.lastName = lastName;
        customer.phoneNumber1 = phoneNumber1;
        customer.phoneNumber2 = phoneNumber2;
        customer.streetAddress = streetAddress;
        customer.city = city;
        customer.state = state;
        customer.zip = zip;
        customer.email = email;
        customer.accountNotes= accountNotes;
    
    NSMutableArray *mutableCustomers = [NSMutableArray arrayWithArray:self.customers];
    [mutableCustomers insertObject:customer atIndex:0];
    self.customers = mutableCustomers;

        [customer saveEventually];
    
}
    - (void)removeCustomer:(Customer *)customer {
        
        NSMutableArray *mutableCustomers = [NSMutableArray arrayWithArray:self.customers];
        if ([mutableCustomers containsObject:customer]) {
            [mutableCustomers removeObject:customer];
            self.customers = mutableCustomers;
        }
        
        [customer unpinInBackground];
        [customer deleteInBackground];
    }
    
    - (void)updateCustomer:(Customer *)customer {
        
        [customer saveEventually];
        
    }


@end
