//
//  AddCustomerTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/8/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AddCustomerTableViewCell : UITableViewCell <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UILabel *customerInfoLabel;

@property (weak, nonatomic) IBOutlet UITextField *customerInfoTextField;


@end


