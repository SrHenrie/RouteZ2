//
//  Appointments.h
//  
//
//  Created by Sarah Henrie on 9/3/15.
//
//

#import "PFObject.h"
#import <Parse/Parse.h>

@interface Appointments : PFObject <PFSubclassing>

@property (nonatomic, retain) NSString *customer;
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *appointmentNotes;

+ (NSString *) parseClassName;

@end
