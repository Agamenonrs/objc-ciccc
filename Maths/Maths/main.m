//
//  main.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper =  [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        while ( gameOn ){
            //Question *question =  [[Question alloc]init];
            Question *question =  [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:question];
            NSLog(@"%@",question.question);
            NSString *input = [InputHandler getUserInput:@"Response: "];
            if([input  isEqual: @"quit"]){
                gameOn = NO;
                NSLog(@"%@",scoreKeeper.showResul);
                continue;
            }
            NSNumber *num = [[[NSNumberFormatter alloc] init] numberFromString:input];
            //NSLog(@"%ld", additionQuestion.answer);
            if (num == nil || [num integerValue] != question.answer ) {
              NSLog(@"Wrong");
              scoreKeeper.wrong++;
            } else {
              NSLog(@"Right");
              scoreKeeper.right++;
            }
            NSLog(@"%@",[questionManager timeOutput]);
        }
    }
    return 0;
}
