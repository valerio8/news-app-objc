//
//  ContentManager.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContentManager : NSObject

@property (strong, nonatomic) NSString *country;
@property (strong, nonatomic) NSString *category;

+ (instancetype)sharedManager;

- (NSArray *)countriesList;
- (NSArray *)categoriesList;

@end

NS_ASSUME_NONNULL_END
