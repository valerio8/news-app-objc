//
//  ContentManager.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "ContentManager.h"

@interface ContentManager()

@property (strong, nonatomic) NSArray *countriesList;
@property (strong, nonatomic) NSArray *categoriesList;

@end

@implementation ContentManager

+ (instancetype)sharedManager {
    static ContentManager *__defaultManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __defaultManager = [[self alloc] init];
        [__defaultManager setDefaultSettings];
    });
    return __defaultManager;
}

- (void)setDefaultSettings {
    self.countriesList = @[@"us", @"fr", @"de", @"gb", @"cz", @"pl", @"ua"];
    self.categoriesList = @[@"business", @"entertainment", @"health", @"science", @"health", @"sports", @"technology"];
    self.category = self.categoriesList.firstObject;
    self.country = self.countriesList.firstObject;
}

@end
