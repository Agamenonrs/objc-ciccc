//
//  QuestionFactory.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (instancetype)init {
    if (self = [super init]) {
       _questionSubclassNames = @[@"AdditionQuestion",
       @"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
        
    }
    return self;
}



- (Question *) generateRandomQuestion{
    int i = arc4random_uniform(4);
    return [[NSClassFromString(self.questionSubclassNames[i]) alloc]init];
}

@end
