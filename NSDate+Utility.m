//
//  NSDate+Utility.m
//  NSDateCategory
//
//  Created by Maarten Lauwers on 18/02/12.
//  Copyright (c) 2012 Maarten Lauwers. All rights reserved.
//

#import "NSDate+Utility.h"

@implementation NSDate (Utility)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
    
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateComponents = [[NSDateComponents alloc] init];
    [_dateComponents setYear:year];
    [_dateComponents setMonth:month];
    [_dateComponents setDay:day];
    [_dateComponents setHour:0];
    [_dateComponents setMinute:0];
    [_dateComponents setSecond:0];
    
    NSDate *_newDate = [_gregorianCalendar dateFromComponents:_dateComponents];
    
    [_dateComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

+ (NSDate *)dateFromString:(NSString *)dateString {
    NSDateFormatter *_dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setLocale:[NSLocale currentLocale]];

    NSDate *_newDate = [_dateFormatter dateFromString:dateString];
    
    [_dateFormatter release];
    
    return _newDate;
}

- (NSDate *)tomorrow {
    return [self dateByAddingDays:1];
}

- (NSDate *)yesterday {
    return [self dateBySubtractingDays:1];
}

- (NSDate *)nextWeek {
    return [self dateByAddingDays:7];
}

- (NSDate *)lastWeek {
    return [self dateBySubtractingDays:7];
}

- (NSDate *)nextMonth {
    return [self dateByAddingMonths:1];
}

- (NSDate *)lastMonth {
    return [self dateBySubtractingMonths:1];
}

- (NSDate *)nextYear {
    return [self dateByAddingYears:1];
}

- (NSDate *)lastYear {
    return [self datebySubtractingYears:1];
}

- (NSDate *)dateByAddingDays:(NSInteger)days {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setDay:days];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

- (NSDate *)dateBySubtractingDays:(NSInteger)days {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setDay:-days];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

- (NSDate *)dateByAddingMonths:(NSInteger)months {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setMonth:months];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;

}

- (NSDate *)dateBySubtractingMonths:(NSInteger)months {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setMonth:-months];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

- (NSDate *)dateByAddingYears:(NSInteger)years {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setYear:years];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

- (NSDate *)datebySubtractingYears:(NSInteger)years {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateOffsetComponents = [[[NSDateComponents alloc] init] autorelease];
    [_dateOffsetComponents setYear:-years];
    
    NSDate *_newDate = [_gregorianCalendar dateByAddingComponents:_dateOffsetComponents toDate:self options:0];
    
    [_dateOffsetComponents release];
    [_gregorianCalendar release];
    
    return _newDate;
}

- (NSInteger)dayOfWeek {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateComponents = [_gregorianCalendar components:NSWeekdayCalendarUnit fromDate:self];
    [_gregorianCalendar release];
    
    return _dateComponents.weekday;
}

- (NSInteger)month {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateComponents = [_gregorianCalendar components:NSMonthCalendarUnit fromDate:self];
    [_gregorianCalendar release];
    
    return _dateComponents.month;
}

- (NSInteger)year {
    NSCalendar *_gregorianCalendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [_gregorianCalendar setLocale:[NSLocale currentLocale]];
    [_gregorianCalendar setFirstWeekday:1];
    
    NSDateComponents *_dateComponents = [_gregorianCalendar components:NSYearCalendarUnit fromDate:self];
    [_gregorianCalendar release];
    
    return _dateComponents.year;
}

- (BOOL)isLaterThanDate:(NSDate *)date {
    return ([self compare:date] == NSOrderedDescending);
}

- (BOOL)isEarlierThanDate:(NSDate *)date {
    return ([self compare:date] == NSOrderedAscending);   
}

- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *_dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setLocale:[NSLocale currentLocale]];
    [_dateFormatter setDateFormat:format];
    NSString *_dateString = [_dateFormatter stringFromDate:self];
    [_dateFormatter release];

    return _dateString;
}

@end
