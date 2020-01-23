//
//  SessionManager.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "SessionManager.h"
#import <AFNetworking/AFNetworking.h>
#import "NSURL+Custom.h"

@implementation SessionManager

+ (instancetype)sharedManager {
    static SessionManager *__defaultManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __defaultManager = [[self alloc] initWithBaseURL:[NSURL baseURL]];
        __defaultManager.requestSerializer = [AFHTTPRequestSerializer serializer];
    });
    return __defaultManager;
}

@end
