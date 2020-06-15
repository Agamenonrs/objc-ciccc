//
//  ValueGenerator.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "ValueGenerator.h"

@implementation ValueGenerator

+ (NSInteger) generateRandomValue{
    return arc4random_uniform(1000) + 100;
}
@end
