//
//  AddCustomerViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/2/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "AddCustomerViewController.h"


@interface AddCustomerViewController ()

@end

@implementation AddCustomerViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 6;
    }
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AddCustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@""];
    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"addAppointmentCell"];
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"viewHistoryCell"];
    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"nextAppointmentCell"];
    
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        cell.customerInfoLabel.text = @"First Name";
        return cell;
    } if (indexPath.section == 0 && indexPath.row == 1){
        cell.customerInfoLabel.text = @"Last Name";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 2){
        cell.customerInfoLabel.text = @"Phone #1";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 3){
        cell.customerInfoLabel.text = @"Phone #2";
        return cell;
    }if (indexPath.section == 0 && indexPath.row == 4){
        cell.customerInfoLabel.text = @"Address";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==5) {
        cell.customerInfoLabel.text = @"Email";
        return cell;
    }
    if (indexPath.section == 1 && indexPath.row == 0) {
        return cell1;
    } if (indexPath.section == 2 && indexPath.row == 0){
        return cell2;
    }if (indexPath.section == 3 && indexPath.row == 0){
        return cell3;
    }else
        return cell3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (IBAction)saveButton:(UIBarButtonItem *)sender {
 


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
