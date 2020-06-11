//
//  QuestionManager.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager
- (instancetype)init {
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString*) timeOutput{
    float total = 0.0;
    
    for (Question *addtionQuestion in self.questions){
        total = total + addtionQuestion.answerTime;
    }
    float average = total / [self.questions count];
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs",total,average];
}


@end
