//
//  HistoryTableViewCell.m
//  
//
//  Created by Sarah Henrie on 8/8/15.
//
//

#import "HistoryTableViewCell.h"

@implementation HistoryTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)viewHistoryButtonPressed:(id)sender {
    NSLog(@" View History Button Pressed");
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
