//
//  FeedTableViewController.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "FeedTableViewController.h"
#import "FeedContract.h"
#import "FeedPresenter.h"
#import "FeedItemTableViewCell.h"
#import "Article.h"
#import "NewsNetworkService.h"
#import <MBProgressHUD/MBProgressHUD.h>
#import "ArticleViewController.h"
#import "ContentManager.h"

@interface FeedTableViewController ()

@property (strong, nonatomic) id<FeedPresenterProtocol> presenter;

@end

@implementation FeedTableViewController
@synthesize articles = _articles;

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        self.presenter = [[FeedPresenter alloc] initWithView:self service:[NewsNetworkService new] contentManager:[ContentManager sharedManager]];
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.presenter getFeed];
}

#pragma mark - Setters

- (void)setArticles:(NSArray *)articles {
    _articles = articles;
    [self.tableView reloadData];
}

#pragma mark - Feed view protocol

- (void)showLoadingIndicator {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}

- (void)hideLoadingIndicator {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

- (void)displayAlert {
    UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"Error" message:@"Please try again later" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertContoller addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    
    [self presentViewController:alertContoller animated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.articles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FeedItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([FeedItemTableViewCell class]) forIndexPath:indexPath];
    Article *article = self.articles[indexPath.row];
    [cell configureWithArticle:article];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Article *article = self.articles[indexPath.row];
    
    ArticleViewController *controller = [ArticleViewController new];
    controller.article = article;
    [self.navigationController showViewController:controller sender:nil];
    
}


@end
