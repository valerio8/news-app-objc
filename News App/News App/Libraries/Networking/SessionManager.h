//
//  SessionManager.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "AFHTTPSessionManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface SessionManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
