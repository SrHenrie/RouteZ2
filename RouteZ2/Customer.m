//
//  Customer.m
//  
//
//  Created by Sarah Henrie on 8/12/15.
//
//

#import "Customer.h"

static NSString * const CustomerClassName = @"Customer";

@implementation Customer

@dynamic firstName;
@dynamic lastName;
@dynamic phoneNumber1;
@dynamic phoneNumber2;
@dynamic streetAddress;
@dynamic state;
@dynamic city;
@dynamic zip;
@dynamic email;
@dynamic accountNotes;

+ (NSString *) parseClassName{
    return CustomerClassName;
}
@end
