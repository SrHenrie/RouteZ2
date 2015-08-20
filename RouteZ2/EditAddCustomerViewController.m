//
//  EditAddCustomerViewController.m
//  
//
//  Created by Sarah Henrie on 8/16/15.
//
//

#import "EditAddCustomerViewController.h"
#import "CustomerController.h"

@interface EditAddCustomerViewController () <UITextFieldDelegate, UITextViewDelegate>

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



@end

@implementation EditAddCustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

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

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [self.firstNameTextField resignFirstResponder];
    return YES;
}

-(void)dismissKeyboard {
    
    [self.firstNameTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
