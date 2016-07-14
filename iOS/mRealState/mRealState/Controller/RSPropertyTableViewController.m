//
//  RSPropertyTableViewController.m
//  mRealState
//
//  Created by Anik on 7/13/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import "RSPropertyTableViewController.h"
#import "RSPropertyTableViewCell.h"

@implementation RSPropertyTableViewController


#pragma mark TableView Deleage

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *homeCellIdentifier = @"propertyCell";
    RSPropertyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:homeCellIdentifier];
    
    if (indexPath.row == 1) {
        cell.propertyImageView.image = [UIImage imageNamed:@"room_design2"];
        cell.propertyNameLabel.text = @"Northern Lights";
        cell.propertyAddressLabel.text = @"Road 69, Gulshan";
        cell.propertyPriceLabel.text = @"$ 200/sqft";
        cell.propertyAreaLabel.text = @"2650 sqft";
    }else if (indexPath.row == 2){
        cell.propertyImageView.image = [UIImage imageNamed:@"room_design3"];
        cell.propertyNameLabel.text = @"The Izar";
        cell.propertyAddressLabel.text = @"Banani DOHS, Dhaka";
        cell.propertyPriceLabel.text = @"$ 180/sqft";
        cell.propertyAreaLabel.text = @"1650 sqft";
    }else if (indexPath.row == 4){
        cell.propertyImageView.image = [UIImage imageNamed:@"room_design2"];
        cell.propertyNameLabel.text = @"Chisty's Yacht";
        cell.propertyAddressLabel.text = @"Road 05A, Dhanmondi";
        cell.propertyPriceLabel.text = @"$ 220/sqft";
        cell.propertyAreaLabel.text = @"2300 sqft";
    }else {
        cell.propertyImageView.image = [UIImage imageNamed:@"room_design"];
    }
    return  cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    RSPropertyDetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"detailViewController"];
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
