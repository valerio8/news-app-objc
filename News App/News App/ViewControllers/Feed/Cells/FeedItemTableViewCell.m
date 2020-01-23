//
//  FeedItemTableViewCell.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "FeedItemTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "NSDateFormatter+Custom.h"

@interface FeedItemTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *sourceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *articleImageView;

@end

@implementation FeedItemTableViewCell

- (void)configureWithArticle:(Article *)article {
    self.titleLabel.text = article.title;
    self.descriptionLabel.text = article.articleDescription;
    self.contentLabel.text = article.content;
    self.sourceLabel.text = article.source.name;
    self.dateLabel.text = [[NSDateFormatter displayDateFormatter] stringFromDate:article.date];
    [self.articleImageView sd_setImageWithURL:article.urlToImage placeholderImage:[UIImage imageNamed:@"news-default-image"]];
}
@end
