//
//  FeedPresenter.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "FeedPresenter.h"
#import "NewsNetworkServiceProtocol.h"
#import "Article.h"

@interface FeedPresenter()

@property (weak, nonatomic) id<FeedViewProtocol> view;
@property (strong, nonatomic) id<NewsNetworkServiceProtocol> service;
@property (strong, nonatomic) ContentManager *contentManager;

@end

@implementation FeedPresenter

- (instancetype)initWithView:(id<FeedViewProtocol>)view service:(id<NewsNetworkServiceProtocol>)service contentManager:(ContentManager *)contentManager{
    self = [super init];
    if (self) {
        self.view = view;
        self.service = service;
        self.contentManager = contentManager;
    }
    return self;
}

- (void)getFeed {
    
    ContentManager *manager = self.contentManager;
    
    __weak typeof(self) weakSelf = self;
    [self.view showLoadingIndicator];
    [self.service getFeedWithCountry:manager.country category:manager.category block:^(NSArray * _Nonnull articles, NSError * _Nonnull error) {
        
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.view hideLoadingIndicator];
        if (error != nil) {
            [strongSelf.view displayAlert];
        } else {
            strongSelf.view.articles = articles;
        }
    }];
}

@end
