//
//  Article.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Source.h"

NS_ASSUME_NONNULL_BEGIN

@interface Article : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSDate *date;

@property (nonatomic, copy, readonly) Source *source;

@property (nonatomic, copy, readonly) NSString *author;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *content;
@property (nonatomic, copy, readonly) NSString *articleDescription;
@property (nonatomic, copy, readonly) NSURL *url;
@property (nonatomic, copy, readonly) NSURL *urlToImage;

@end

NS_ASSUME_NONNULL_END
