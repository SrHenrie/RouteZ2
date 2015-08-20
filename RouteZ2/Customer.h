//
//  Customer.h
//  
//
//  Created by Sarah Henrie on 8/12/15.
//
//

#import <Parse/Parse.h>
#import <Foundation/Foundation.h>

@interface Customer : PFObject <PFSubclassing>

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * phoneNumber1;
@property (nonatomic, retain) NSString * phoneNumber2;
@property (nonatomic, retain) NSString * streetAddress;
@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * state;
@property (nonatomic, retain) NSString * zip;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * accountNotes;


+ (NSString *)parseClassName;

@end
