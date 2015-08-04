//
//  SettingsDataSource.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/3/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "SettingsDataSource.h"
#import "SettingsViewController.h"

@implementation SettingsDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  
    return 1;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableView *cell = [tableView dequeueReusableCellWithIdentifier:@"settingsCell"];
    
    return cell;
    
}
@end
