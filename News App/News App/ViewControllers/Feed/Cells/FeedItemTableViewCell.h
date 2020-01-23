//
//  FeedItemTableViewCell.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeedItemTableViewCell : UITableViewCell

- (void)configureWithArticle:(Article *)article;

@end

NS_ASSUME_NONNULL_END
