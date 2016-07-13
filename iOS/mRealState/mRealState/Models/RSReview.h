//
//  RSReview.h
//  mRealState
//
//  Created by Anik on 7/13/16.
//  Copyright © 2016 mStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSReview : NSObject

@property NSString  *ID;
@property NSDate    *date;
@property NSString  *reviewerName;
@property NSString  *reviewerID;
@property int       starCount;
@property NSString  *comment;
@property NSString  *timeAgo;

@end
