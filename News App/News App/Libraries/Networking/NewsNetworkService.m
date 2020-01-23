//
//  NewsNetworkService.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "NewsNetworkService.h"
#import "NewsNetworkServiceProtocol.h"
#import "SessionManager.h"
#import "Article.h"

static NSString *const APIKey = @"43ec3da929ea47febd84d5b2320d2310";

static NSString *const HeadlinesPathComponent = @"top-headlines";

static NSString *const ApiKeyQueryParameterName = @"apiKey";
static NSString *const CategoryQueryParameterName = @"category";
static NSString *const CountryQueryParameterName = @"country";

@implementation NewsNetworkService

- (void)getFeedWithCountry:(NSString *)country category:(NSString *)category  block:(void (^)(NSArray *, NSError *))block {
    
    [[SessionManager sharedManager] GET:HeadlinesPathComponent parameters: @{ApiKeyQueryParameterName : APIKey, CountryQueryParameterName: country, CategoryQueryParameterName: category} progress:nil success:^(NSURLSessionDataTask * __unused task, NSDictionary *responseObject) {
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSArray *models = responseObject[@"articles"];
            NSArray *array = [MTLJSONAdapter modelsOfClass:[Article class] fromJSONArray:models error:nil];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                if (block) {
                    block(array, nil);
                }
            });
        });
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(nil, error);
        }
    }];
}

@end
