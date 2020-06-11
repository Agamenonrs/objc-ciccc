//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue * super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld * %ld\n", super.leftValue, super.rightValue];
}

@end
