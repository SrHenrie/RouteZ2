//
//  AddAppointmentTableViewController.h
//  
//
//  Created by Sarah Henrie on 8/26/15.
//
//

#import <UIKit/UIKit.h>

@interface AddAppointmentTableViewController : UITableViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *customerNameLabel;
//@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextView *appointmentNotesTextView;
@property (weak, nonatomic) IBOutlet UIButton *reoccuringAppointmentButton;
//- (IBAction)saveDateButton:(UIButton *)sender;


@end
