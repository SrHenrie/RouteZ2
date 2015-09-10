//
//  AppointmentController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 9/3/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appointments.h"
#import "Customer.h"

@interface AppointmentController : NSObject

@property (nonatomic, strong) NSArray *appointments;

+ (AppointmentController *)sharedInstance;

-(void) loadAppointmentsFromParse:(void (^)(NSError *error))completion;

- (void)updateAppointmentsFromParseLocalDatastore ;

- (void)resetAllAppointmentsFromParse:(void (^)(NSError *error))completion;

- (void)addAppointments:(NSDate *)date text:(NSString *)appointmentNotes customer:(Customer *)customer;

- (void)removeAppointments:(Appointments *)appointments;

- (void)updateAppointment:(Appointments *)appointments;

@end
