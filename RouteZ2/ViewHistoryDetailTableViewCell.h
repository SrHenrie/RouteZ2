//
//  ViewHistoryDetailTableViewCell.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/11/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewHistoryDetailTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITextView *appointmentNotesTextView;



@end
