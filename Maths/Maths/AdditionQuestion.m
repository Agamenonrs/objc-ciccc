//
//  AdditionQuestion.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        long number1 =  arc4random_uniform(100) + 10;
        long number2 =  arc4random_uniform(100) + 10;
        _question = [NSString stringWithFormat:@"%ld + %ld\n", number1, number2];
        _answer = (NSInteger) number1 + number2 ;
        
    }
    return self;
}

@end
