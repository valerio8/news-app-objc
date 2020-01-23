//
//  FeedContract.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

NS_ASSUME_NONNULL_BEGIN

@protocol FeedViewProtocol <NSObject>

@property (strong, nonatomic) NSArray *articles;

- (void)displayAlert;
- (void)showLoadingIndicator;
- (void)hideLoadingIndicator;

@end

@protocol FeedPresenterProtocol <NSObject>

- (void)getFeed;

@end

NS_ASSUME_NONNULL_END
