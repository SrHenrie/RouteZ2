//
//  CustomerViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/1/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "CustomerViewController.h"
#import "CustomerTableViewCell.h"
#import "CustomerController.h"
#import "CustomerDataSource.h"


@interface CustomerViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customerTableView;


@end

@implementation CustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)addButtonClicked:(id)sender {
    
    NSLog(@"button clicked");
    
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
