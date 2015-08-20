//
//  AddCustomerTableViewCell.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/8/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "AddCustomerTableViewCell.h"

@implementation AddCustomerTableViewCell

- (void)awakeFromNib {
    self.customerInfoTextField.delegate = self;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
}
@end
