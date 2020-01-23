//
//  NewsNetworkServiceProtocol.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NewsNetworkServiceProtocol <NSObject>

- (void)getFeedWithCountry:(NSString *)country category:(NSString *)category  block:(void (^)(NSArray *, NSError *))block;

@end

NS_ASSUME_NONNULL_END
