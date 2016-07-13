//
//  RSCompany.h
//  mRealState
//
//  Created by Anik on 7/13/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface RSCompany : NSObject

@property NSString *name;
@property NSString *ID;
@property NSDate *estDate;
@property NSString *headOfficeAddress;
@property CLLocation *officeLocation;
@property NSString *contactInfo;
@property NSString *projectCompleted;
@property NSString *projectOnGoing;
@property NSString *projectUpComing;

@end
