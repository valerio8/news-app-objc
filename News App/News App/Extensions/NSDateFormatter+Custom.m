//
//  NSDateFormatter+Custom.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "NSDateFormatter+Custom.h"

@implementation NSDateFormatter (Custom)

+ (NSDateFormatter *)apiDateFormatter {
    static NSDateFormatter *apiDateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        apiDateFormatter = [[NSDateFormatter alloc] init];
        apiDateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    });
    return apiDateFormatter;

}

+ (NSDateFormatter *)displayDateFormatter {
    static NSDateFormatter *displayDateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        displayDateFormatter = [[NSDateFormatter alloc] init];
        displayDateFormatter.dateFormat = @"dd MMM yyyy";
    });
    return displayDateFormatter;
}

@end
