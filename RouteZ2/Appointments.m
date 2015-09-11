//
//  Appointments.m
//  
//
//  Created by Sarah Henrie on 9/3/15.
//
//

#import "Appointments.h"

static NSString * const AppointmentClassName = @"Appointments";

@implementation Appointments

@dynamic customer;
@dynamic date;
@dynamic appointmentNotes;

+ (NSString *) parseClassName{
    return AppointmentClassName;
}


@end
