//
//  NextAppointmentTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/8/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextAppointmentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nextAppointmentLabel;
@property (weak, nonatomic) IBOutlet UITextField *nextAppointmentTextField;

@end