//
//  SettingsPresenter.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SettingsContract.h"
#import "ContentManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface SettingsPresenter : NSObject<SettingsPresenterProtocol>

- (instancetype)initWithContentManager:(ContentManager *)contentManager;

@end

NS_ASSUME_NONNULL_END
