//
//  ClutchConfiguration.h
//  Clutch
//
//  Created by dev on 04/01/2017.
//
//

#import <Foundation/Foundation.h>

// Timing value holders (start_time is used in main, end_time in finialize bundle operation's completion block)

extern struct timeval start_time, end_time;
int diff_ms(struct timeval t1, struct timeval t2);

@interface ClutchConfiguration : NSObject

extern NSString * const CLUTCH_MOBILE_PATH;
extern NSString * const CLUTCH_DUMPED_PATH;
extern NSString * const CLUTCH_APPLIST_CACHE_PATH;

extern NSString * const CLUTCH_VERSION_NUMBER;
extern NSString * const CLUTCH_VERSION_STRING;


@end
