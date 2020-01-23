//
//  NSURL+Custom.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "NSURL+Custom.h"

static NSString *const BaseURLString = @"https://newsapi.org/v2";

@implementation NSURL (Custom)

+ (NSURL *)baseURL
{
    return [NSURL URLWithString:BaseURLString];
}

@end
