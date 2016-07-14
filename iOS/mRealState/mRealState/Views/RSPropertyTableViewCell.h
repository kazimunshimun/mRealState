//
//  RSPropertyTableViewCell.h
//  mRealState
//
//  Created by Anik on 7/13/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSPropertyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *propertyImageView;
@property (weak, nonatomic) IBOutlet UILabel *propertyNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *propertyPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *propertyAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *propertyAreaLabel;

@end
