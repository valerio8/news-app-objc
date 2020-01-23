//
//  FeedPresenter.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedContract.h"
#import "NewsNetworkServiceProtocol.h"
#import "ContentManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeedPresenter : NSObject<FeedPresenterProtocol>

- (instancetype)initWithView:(id<FeedViewProtocol>)view service:(id<NewsNetworkServiceProtocol>)service contentManager:(ContentManager *)contentManager;

@end

NS_ASSUME_NONNULL_END
