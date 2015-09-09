//
//  AddAppointmentTableViewController.m
//  
//
//  Created by Sarah Henrie on 8/26/15.
//
//

#import "AddAppointmentTableViewController.h"
#import "Customer.h"
#import "CustomerController.h"
#import "CustomerProfileTableViewController.h"
#import "AppointmentController.h"
#import "Appointments.h"

@interface AddAppointmentTableViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveAppointmentButton;


@end

@implementation AddAppointmentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithCustomer:self.customer];

}

- (IBAction)datePicker:(id)sender {
    
    NSDate *date = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd, hh:mm"];
    NSString *dateString = [dateFormat stringFromDate:date];
    
    PFObject *addValues= [PFObject objectWithClassName:@"Appointments"];
    [addValues setObject: dateString forKey:@"myDateKey"];
    [addValues saveInBackground];
    

}
- (IBAction)saveAppointmentButton:(id)sender {
        
}

- (void)updateWithCustomer: (Customer *)customer {
    
    self.customerNameLabel.text = self.customerNameLabel.text = [NSString stringWithFormat:@"%@ %@", customer.firstName, customer.lastName];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  }


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }else
    return 1;
}
//- (IBAction)saveDateButton:(UIButton *)sender {
//    
//    NSDate *date = self.datePicker.date;
//    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//    [formatter setDateFormat:@"yyyy-MM-dd"];
//    
//    NSString *stringFromDate = [formatter stringFromDate:date];
//    NSLog(@"%@",stringFromDate);
//    NSLog(@"%@", [NSDate date]);
//    int timeInterval = [date timeIntervalSince1970];
//    NSLog(@"%i", timeInterval);
//
//
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
