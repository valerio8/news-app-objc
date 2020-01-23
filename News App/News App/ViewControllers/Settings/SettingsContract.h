//
//  SettingsContract.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SettingsPresenterProtocol <NSObject>

- (NSArray *)countriesList;
- (NSArray *)categoriesList;

- (NSString *)currentCountry;
- (NSString *)currentCategory;

- (void)setCurrentCountry:(NSString *)country;
- (void)setCurrentCategory:(NSString *)category;

@end

NS_ASSUME_NONNULL_END
