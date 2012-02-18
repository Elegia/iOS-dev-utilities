//
//  NSDate+Utility.h
//  NSDateCategory
//
//  Created by Maarten Lauwers on 18/02/12.
//  Copyright (c) 2012 Maarten Lauwers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utility)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
+ (NSDate *)dateFromString:(NSString *)dateString;

- (NSDate *)tomorrow;
- (NSDate *)yesterday;
- (NSDate *)nextWeek;
- (NSDate *)lastWeek;
- (NSDate *)nextMonth;
- (NSDate *)lastMonth;
- (NSDate *)nextYear;
- (NSDate *)lastYear;

- (NSDate *)dateByAddingDays:(NSInteger)days;
- (NSDate *)dateBySubtractingDays:(NSInteger)days;
- (NSDate *)dateByAddingMonths:(NSInteger)months;
- (NSDate *)dateBySubtractingMonths:(NSInteger)months;
- (NSDate *)dateByAddingYears:(NSInteger)years;
- (NSDate *)datebySubtractingYears:(NSInteger)years;

- (NSInteger)dayOfWeek;
- (NSInteger)month;
- (NSInteger)year;

- (BOOL)isLaterThanDate:(NSDate *)date;
- (BOOL)isEarlierThanDate:(NSDate *)date;

- (NSString *)stringWithFormat:(NSString *)format;

@end
