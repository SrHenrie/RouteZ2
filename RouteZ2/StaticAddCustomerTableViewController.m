//
//  StaticAddCustomerTableViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/22/15.
//  Copyright © 2015 Sarah Henrie. All rights reserved.
//

#import "StaticAddCustomerTableViewController.h"
#import "CustomerController.h"

@interface StaticAddCustomerTableViewController ()

@property (nonatomic, strong) Customer *customer;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phone1TextField;
@property (weak, nonatomic) IBOutlet UITextField *phone2TextField;
@property (weak, nonatomic) IBOutlet UITextField *streetAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UITextField *zipTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextView *accountNotesTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *deleteCustomer;


@end

@implementation StaticAddCustomerTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


//-(void)updateWithCustomerInfo:(Customer *)customer{
//    self.customer = customer;
//
//    self.firstNameTextField.text = customer.firstName;
//    self.lastNameTextField.text = customer.lastName;
//    self.phone1TextField.text = customer.phoneNumber1;
//    self.phone2TextField.text = customer.phoneNumber2;
//    self.streetAddressTextField.text = customer.streetAddress;
//    self.cityTextField.text = customer.city;
//    self.stateTextField.text = customer.state;
//    self.zipTextField.text = customer.zip;
//    self.emailTextField.text = customer.email;
//    self.accountNotesTextView.text = customer.accountNotes;
//
//}

- (IBAction)saveButton:(id)sender {
    if (self.customer){
        self.customer.firstName = self.firstNameTextField.text;
        self.customer.lastName = self.lastNameTextField.text;
        self.customer.phoneNumber1 = self.phone1TextField.text;
        self.customer.phoneNumber2 = self.phone2TextField.text;
        self.customer.streetAddress = self.streetAddressTextField.text;
        self.customer.city = self.cityTextField.text;
        self.customer.state = self.stateTextField.text;
        self.customer.zip = self.zipTextField.text;
        self.customer.email= self.emailTextField.text;
        self.customer.accountNotes = self.accountNotesTextView.text;
        
        [[CustomerController sharedInstance] updateCustomer:self.customer];
        
        [self.navigationController popViewControllerAnimated:YES];
        
    } else {
        [[CustomerController sharedInstance] addCustomer:self.firstNameTextField.text text:self.lastNameTextField.text  text:self.phone1TextField.text text:self.phone2TextField.text text:self.streetAddressTextField.text text:self.cityTextField.text text:self.stateTextField.text text:self.zipTextField.text text:self.emailTextField.text text:self.accountNotesTextView.text];
    }
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/


// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}
//


// Override to support editing the table view.
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//    }   
//}
//
//
//
//
//

@end
