//
//  ArticleViewController.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "ArticleViewController.h"
#import <WebKit/WebKit.h>
#import <Masonry/Masonry.h>

@interface ArticleViewController ()

@property (strong, nonatomic) WKWebView *webView;

@end

@implementation ArticleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView = [WKWebView new];
    [self.view addSubview:self.webView];
    
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.article.url]];
    
    self.navigationItem.title = self.article.title;
    
}
@end
