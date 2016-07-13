//
//  RSProperty.h
//  mRealState
//
//  Created by Anik on 7/13/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface RSProperty : NSObject

@property NSString      *ID;
@property NSString      *address;
@property NSString      *companyID;
@property NSString      *descriptionText;
@property CLLocation    *location;
@property NSString      *handoverDate;
@property float         costPerSqft;

@end
