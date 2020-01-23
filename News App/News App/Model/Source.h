//
//  Source.h
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>


NS_ASSUME_NONNULL_BEGIN

@interface Source : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *identifier;
@property (nonatomic, copy, readonly) NSString *name;

@end

NS_ASSUME_NONNULL_END
