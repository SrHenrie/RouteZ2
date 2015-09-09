//
//  AddAppointmentTableViewController.h
//  
//
//  Created by Sarah Henrie on 8/26/15.
//
//

#import <UIKit/UIKit.h>
#import "CustomerController.h"
#import "Appointments.h"
#import "AppointmentController.h"


@interface AddAppointmentTableViewController : UITableViewController <UITextViewDelegate>

@property(strong, nonatomic) Customer *customer;
@property (strong, nonatomic) Appointments *appointments;
@property (weak, nonatomic) IBOutlet UILabel *customerNameLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextView *appointmentNotesTextView;
@property (weak, nonatomic) IBOutlet UIButton *reoccuringAppointmentButton;
@property (weak, nonatomic) IBOutlet UILabel *datePickerLabel;




@end
