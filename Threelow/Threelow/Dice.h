//
//  Dice.h
//  Threelow
//
//  Created by Agamenon Rocha Dos Santos on 15/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic) uint32_t value;

- (uint32_t) getRandomValue;

@end

NS_ASSUME_NONNULL_END
