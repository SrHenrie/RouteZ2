//
//  AppointmentController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 9/3/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import "AppointmentController.h"

@implementation AppointmentController


+ (AppointmentController *)sharedInstance {
    static AppointmentController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppointmentController alloc] init];
        [sharedInstance loadAppointmentsFromParse: nil];
    });
    return sharedInstance;
}
-(void) loadAppointmentsFromParse:(void (^)(NSError *error))completion{
    
    PFQuery *query = [Appointments query];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (Appointments *appointments in objects) {
            [appointments pin];
        }
        if (completion) {
            completion(error);
        }
    }];
}

- (void)resetAllAppointmentsFromParse:(void (^)(NSError *error))completion {
    [PFObject unpinAllInBackground:self.appointments block:^(BOOL succeeded, NSError * _Nullable error) {
        [self loadAppointmentsFromParse: completion];
    }];
}
- (void)updateAppointmentsFromParseLocalDatastore {
    PFQuery *query = [Appointments query];
    [query fromLocalDatastore];
      self.appointments = [query findObjects];
}

- (void)addAppointments:(NSDate *)date text:(NSString *)appointmentNotes customer:(Customer *)customer{
    
    Appointments *appointments = [Appointments object];
    
    appointments.date = date;
    appointments.appointmentNotes = appointmentNotes;
    appointments.customer = customer;
    
    NSMutableArray *mutableAppointments = [NSMutableArray arrayWithArray:self.appointments];
    [mutableAppointments insertObject:appointments atIndex:0];
    self.appointments = mutableAppointments;
    
    
    [appointments saveEventually];
}

- (void)removeAppointments:(Appointments *)appointments {
    
    NSMutableArray *mutableAppointments = [NSMutableArray arrayWithArray:self.appointments];
    if ([mutableAppointments containsObject:appointments]) {
        [mutableAppointments removeObject:appointments];
        self.appointments = mutableAppointments;
    }
    
    [appointments unpinInBackground];
    [appointments deleteInBackground];
}
- (void)updateAppointment:(Appointments *)appointments {
    
    [appointments saveEventually];
    
}


@end
