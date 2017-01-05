//
//  ClutchConfiguration.m
//  Clutch
//
//  Created by dev on 04/01/2017.
//
//

#import "ClutchConfiguration.h"

struct timeval start_time, end_time;
int diff_ms(struct timeval t1, struct timeval t2);
int diff_ms(struct timeval t1, struct timeval t2)
{
    return (int)((((t1.tv_sec - t2.tv_sec) * 1000000) + (t1.tv_usec - t2.tv_usec)) / 1000);
}

@implementation ClutchConfiguration

NSString * const CLUTCH_MOBILE_PATH = @"/private/var/mobile/Documents/Clutch/";
NSString * const CLUTCH_DUMPED_PATH = @"/private/var/mobile/Documents/Dumped/";
NSString * const CLUTCH_APPLIST_CACHE_PATH = @"/private/var/mobile/Documents/Clutch/applist-cache.plist";

NSString * const CLUTCH_VERSION_NUMBER = @"2.0.4";

#ifdef DEBUG
NSString * const CLUTCH_VERSION_STRING = @"2.0.4 DEBUG";
#else
NSString * const CLUTCH_VERSION_STRING = CLUTCH_VERSION_NUMBER;
#endif


@end
