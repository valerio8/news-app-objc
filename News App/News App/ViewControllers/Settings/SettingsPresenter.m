//
//  SettingsPresenter.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "SettingsPresenter.h"

@interface SettingsPresenter()

@property (strong, nonatomic) ContentManager *contentManager;

@end

@implementation SettingsPresenter

- (instancetype)initWithContentManager:(ContentManager *)contentManager {
    self = [super init];
    if (self) {
        self.contentManager = contentManager;
    }
    return self;
}

- (NSArray *)countriesList {
    return self.contentManager.countriesList;
}

- (NSArray *)categoriesList {
    return self.contentManager.categoriesList;
}

-(void)setCurrentCountry:(NSString *)country {
    self.contentManager.country = country;
}

- (void)setCurrentCategory:(NSString *)category {
    self.contentManager.category = category;
}

- (nonnull NSString *)currentCategory {
    return self.contentManager.category;
}

- (nonnull NSString *)currentCountry {
    return self.contentManager.country;
}


@end
