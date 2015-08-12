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

- (NSArray *)customers {
                          
            PFQuery *query = [Customer query];
            [query fromLocalDatastore];
            return [query findObjects];
                          
                      }
  
- (void)addCustomer:(NSString *)firstName text:(NSString *)lastName text:(NSString *)phoneNumber1 text:(NSString *)phoneNumber2 text:(NSString *)address text:(NSString *)email text:(NSString *)notes{
        
        Customer *customers = [Entry object];
        
        customers.text = firstName;
        customers.text = lastName
        customers.text = phoneNumber1;
        customers.text = phoneNumber2;
        customers.text = address;
        customers.text = email;
        customers.text = notes;
        
        [customers pinInBackground];
        [customers save];
        
    }

}
@end
