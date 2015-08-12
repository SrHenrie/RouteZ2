//
//  Customer.m
//  
//
//  Created by Sarah Henrie on 8/12/15.
//
//

#import "Customer.h"

static NSString * const CustomerClassName = @"customer";

@implementation Customer

@dynamic firstName;
@dynamic lastName;
@dynamic phoneNumber1;
@dynamic phoneNumber2;
@dynamic address;
@dynamic email;
@dynamic notes;

+ (NSString *) parseClassName{
    return CustomerClassName;
}
@end
