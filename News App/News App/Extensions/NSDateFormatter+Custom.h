//
//  NSDateFormatter+Custom.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (Custom)

+ (NSDateFormatter *)displayDateFormatter;
+ (NSDateFormatter *)apiDateFormatter;

@end

NS_ASSUME_NONNULL_END
