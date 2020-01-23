//
//  Article.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "Article.h"
#import "NSDateFormatter+Custom.h"

@implementation Article

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"author": @"author",
        @"title": @"title",
        @"content": @"content",
        @"articleDescription": @"description",
        @"url": @"url",
        @"urlToImage": @"urlToImage",
        @"source": @"source",
        @"date": @"publishedAt"
    };
}

+ (NSValueTransformer *)urlToImageJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)urlJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)sourceJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:Source.class];
}

+ (NSValueTransformer *)dateJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [[NSDateFormatter apiDateFormatter] dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [[NSDateFormatter apiDateFormatter]  stringFromDate:date];
    }];
}

@end
