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
#import "CustomerProfileTableViewController.h"


@interface CustomerViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customerTableView;


@end

@implementation CustomerViewController
//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[CustomerController sharedInstance] updateCustomersFromParseLocalDatastore];
}

-(void)viewWillAppear:(BOOL)animated {
    [self.customerTableView reloadData];
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    CustomerProfileTableViewController *customerDetailView = [CustomerProfileTableViewController new];
//    [customerDetailView updateCustomer:[CustomerController sharedInstance].customers[indexPath.row]];
//    
//}



//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    CustomerProfileTableViewController *customerProfileViewController = [CustomerProfileTableViewController new];
//    [customerProfileViewController updateWithCustomer:[CustomerController sharedInstance].customers[indexPath.row]];
//    [self.navigationController pushViewController:customerProfileViewController animated:YES];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"viewProfile"]) {
        
        NSIndexPath *indexPath = [self.customerTableView indexPathForSelectedRow];
        
        CustomerProfileTableViewController *viewController = segue.destinationViewController;
        
        
        Customer *customer = [CustomerController sharedInstance].customers[indexPath.row];
        
//        [viewController updateWithCustomer:customer];
        
        viewController.customer = customer;
    }
}

- (IBAction)resetCustomers:(id)sender {
    [[CustomerController sharedInstance] resetAllCustomersFromParse:^(NSError *error) {
        if (error == nil) {
            [[CustomerController sharedInstance] updateCustomersFromParseLocalDatastore];
            [self.customerTableView reloadData];
        }
    }];
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
