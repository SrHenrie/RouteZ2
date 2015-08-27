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


- (NSArray *)customers{
        
        PFQuery *query = [Customer query];
       [[query orderByDescending:@"createdAt" ] fromLocalDatastore];
        return [query findObjects];
        
}

- (void)addCustomer:(NSString *)firstName text:(NSString *)lastName text:(NSString *)phoneNumber1 text:(NSString *)phoneNumber2 text:(NSString *)streetAddress text:(NSString *)city text:(NSString *) state text:(NSString *) zip text:(NSString *)email text:(NSString *)accountNotes{
        
//        Customer *customer = [Customer object];
//        
//        customer.firstName = firstName;
//        customer.lastName = lastName;
//        customer.phoneNumber1 = phoneNumber1;
//        customer.phoneNumber2 = phoneNumber2;
//        customer.streetAddress = streetAddress;
//        customer.city = city;
//        customer.state = state;
//        customer.zip = zip;
//        customer.email = email;
//        customer.accountNotes= accountNotes;
//        
//        [customer pinInBackground];
//        [customer save];
    
    PFObject *customer = [PFObject objectWithClassName:@"Customer"];
    customer[@"firstName"] = firstName;
    customer[@"lastName"] = lastName;
    customer[@"phoneNumber1"] = phoneNumber1;
    customer[@"phoneNumber2"] = phoneNumber2;
    customer[@"streetAddress"] = streetAddress;
    customer[@"city"] = city;
    customer[@"state"] = state;
    customer[@"zip"] = zip;
    customer[@"email"] = email;
    customer[@"accountNotes"] = accountNotes;
        
    [customer saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
#warning Ask Ben why this takes so long to save.
    }];
    
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
