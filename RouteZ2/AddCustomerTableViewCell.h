//
//  AddCustomerTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/8/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCustomerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *phoneOneLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneOneTextField;
@property (weak, nonatomic) IBOutlet UILabel *phoneTwoLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneTwoTextField;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UILabel *accountNotesLabel;
@property (weak, nonatomic) IBOutlet UITextField *accountNotesTextField;
@property (weak, nonatomic) IBOutlet UIButton *addAppointmentButton;


@end
