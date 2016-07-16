//
//  RSPropertyDetailViewController.m
//  mRealState
//
//  Created by Anik on 7/14/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import "RSPropertyDetailViewController.h"

@implementation RSPropertyDetailViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.title = @"Detail";
    
    OverviewViewController *overviewViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"overviewViewController"];
    overviewViewController.title = @"Overview";
    
    RSLocationViewController *locationViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"locationViewController"];
    locationViewController.title = @"Location";
    
    RSFeaturesTableViewController *featureTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"featureViewController"];
    featureTableViewController.title = @"Features";
    
    RSReviewTableViewController *reviewTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"reviewViewController"];
    reviewTableViewController.title = @"Reviews";
    
    NSArray *controllerArray = @[overviewViewController, featureTableViewController, locationViewController, reviewTableViewController];
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor colorWithRed:36.0/255 green:105.0/255 blue:69.0/255 alpha:1.0],
                                 CAPSPageMenuOptionViewBackgroundColor: [UIColor colorWithRed:20.0/255.0 green:20.0/255.0 blue:20.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor colorWithRed:59.0/255 green:165.0/255 blue:203.0/255 alpha:1.0],
                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor colorWithRed:70.0/255.0 green:70.0/255.0 blue:70.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont fontWithName:@"HelveticaNeue" size:13.0],
                                 CAPSPageMenuOptionMenuHeight: @(40.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(90.0),
                                 CAPSPageMenuOptionCenterMenuItems: @(YES)
                                 };
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0, 64.0, self.view.frame.size.width, self.view.frame.size.height - 64) options:parameters];
  //  _pageMenu.bottomMenuHairlineColor = [UIColor colorWithRed:36.0/255 green:105.0/255 blue:69.0/255 alpha:1.0];
    [self.view addSubview:_pageMenu.view];
    
}
@end
