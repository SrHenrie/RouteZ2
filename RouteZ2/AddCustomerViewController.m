//
//  AddCustomerViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/2/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "AddCustomerViewController.h"
#import "AddCustomerTableViewCell.h"
#import "CustomerController.h"

@interface AddCustomerViewController ()<UITableViewDataSource,UITableViewDelegate,UITabBarDelegate>

@property (weak, nonatomic) IBOutlet UITableView *addCustomerTableView;
@property(strong, nonatomic)AddCustomerTableViewCell *cell1;

@end

@implementation AddCustomerViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.addCustomerTableView.dataSource = self;
    self.addCustomerTableView.delegate = self;
    
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 10;
    }
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AddCustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"addCustomerCell"];
    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"addAppointmentCell"];
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"viewHistoryCell"];
    UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"nextAppointmentCell"];
      UITableViewCell *cell4 = [tableView dequeueReusableCellWithIdentifier:@"deleteCustomerCell"];
    
    
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
        cell.customerInfoLabel.text = @"Street Address";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==5) {
        cell.customerInfoLabel.text = @"City";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==6) {
        cell.customerInfoLabel.text = @"State";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==7) {
        cell.customerInfoLabel.text = @"Zip";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==8) {
        cell.customerInfoLabel.text = @"Email";
        return cell;
    }if (indexPath.section == 0 && indexPath.row ==9) {
        cell.customerInfoLabel.text = @"Account Notes";
        return cell;
    }
    
    if (indexPath.section == 1 && indexPath.row == 0) {
        return cell1;
    } if (indexPath.section == 2 && indexPath.row == 0){
        return cell2;
    }if (indexPath.section == 3 && indexPath.row == 0){
        return cell3;
    }if (indexPath.section == 4 && indexPath.row == 0){
        return cell4;
    }else
        return cell4;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
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
