//
//  AdditionQuestion.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _startTime = [NSDate date];
        _leftValue =  arc4random_uniform(90) + 10;
        _rightValue =  arc4random_uniform(90) + 10;
      ///  _question = [NSString stringWithFormat:@"%ld + %ld\n", _leftValue, _rightValue];
     //   _answer = (NSInteger) number1 + number2 ;
        
    }
    return self;
}

- (void) generateQuestion{
    
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime{
    return  [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
