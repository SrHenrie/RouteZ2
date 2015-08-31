//
//  CustomerProfileTableViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/24/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import "CustomerProfileTableViewController.h"
#import "Customer.h"
#import "CustomerController.h"

@interface CustomerProfileTableViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phone1TextField;
@property (weak, nonatomic) IBOutlet UITextField *phone2TextField;
@property (weak, nonatomic) IBOutlet UITextField *streetAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UITextField *zipTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *accountNotesTextField;

@property (weak, nonatomic) IBOutlet UIButton *addAppointmentButton;
@property (weak, nonatomic) IBOutlet UIButton *viewHistoryButton;
@property (weak, nonatomic) IBOutlet UILabel *nextAppointmentLabel;
@property (weak, nonatomic) IBOutlet UITextField *nextAppointmentTextField;
@property (weak, nonatomic) IBOutlet UIButton *deleteCustomerButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;


@end

@implementation CustomerProfileTableViewController

- (void)updateWithCustomer: (Customer *)customer {

    self.customer = customer;
    
    if (customer.firstName && customer.firstName.length > 0) {
        self.firstNameTextField.text = customer.firstName;
        self.firstNameTextField.textColor = [UIColor blackColor];
    }
    self.lastNameTextField.text = customer.lastName;
    self.phone1TextField.text = customer.phoneNumber1;
    self.phone2TextField.text = customer.phoneNumber2;
    self.streetAddressTextField.text = customer.streetAddress;
    self.cityTextField.text = customer.city;
    self.stateTextField.text = customer.state;
    self.zipTextField.text = customer.zip;
    self.emailTextField.text = customer.email;
    self.accountNotesTextField.text = customer.accountNotes;
    

}

- (IBAction)editButton:(id)sender {
    [self.firstNameTextField setEnabled:YES];
    [self.firstNameTextField setEnabled:YES];
    [self.lastNameTextField setEnabled:YES];
    [self.phone1TextField setEnabled:YES];
    [self.phone2TextField setEnabled:YES];
    [self.streetAddressTextField setEnabled:YES];
    [self.cityTextField setEnabled:YES];
    [self.stateTextField setEnabled:YES];
    [self.zipTextField setEnabled:YES];
    [self.emailTextField setEnabled:YES];
    [self.accountNotesTextField setEnabled:YES];
    
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithCustomer:self.customer];

    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

//
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if(indexPath.row == 0)
//    {
//        return  UITableViewCellEditingStyleInsert;
//    }
//    else
//    {
//        return UITableViewCellEditingStyleDelete;
//    }
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 10;
    }
    return 4;
}
- (IBAction)addAppointmentButton:(id)sender {
    NSLog(@"appointment clicked");
}

- (IBAction)viewHistoryButton:(id)sender {
    NSLog(@"View History Button clicked");
}

- (IBAction)deleteCustomerButton:(id)sender {
    
    
}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//      UITableViewCell *cell0 = [tableView dequeueReusableCellWithIdentifier:@"cell0" forIndexPath:indexPath];
//    if (indexPath.section == 0 && indexPath.row==0) {
//        
//        self.firstNameLabel.text = self.customer.firstName;
//        return cell0;
//    
//    }else{
//    
//    // Configure the cell...
//    
//    return cell0;
//        
//}
//}

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
