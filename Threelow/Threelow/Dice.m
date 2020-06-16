//
//  Dice.m
//  Threelow
//
//  Created by Agamenon Rocha Dos Santos on 15/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}


- (uint32_t) getRandomValue{
    self.value = arc4random_uniform(6) + 1;
    return self.value;
}

@end
