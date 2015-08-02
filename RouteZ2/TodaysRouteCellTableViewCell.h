//
//  TodaysRouteCellTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 7/31/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodaysRouteCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

@end
