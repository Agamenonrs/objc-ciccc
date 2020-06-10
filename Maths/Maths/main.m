//
//  main.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper =  [[ScoreKeeper alloc]init];
        while ( gameOn ){
            AdditionQuestion *additionQuestion =  [[AdditionQuestion alloc]init];
            NSLog(@"%@",additionQuestion.question);
            NSString *input = [InputHandler getUserInput:@"Response: "];
            if([input  isEqual: @"quit"]){
                gameOn = NO;
                NSLog(@"%@",scoreKeeper.showResul);
                continue;
            }
            NSNumber *num = [[[NSNumberFormatter alloc] init] numberFromString:input];
            //NSLog(@"%ld", additionQuestion.answer);
            if (num == nil || [num integerValue] != additionQuestion.answer ) {
              NSLog(@"Wrong");
              scoreKeeper.wrong++;
            } else {
              NSLog(@"Right");
              scoreKeeper.right++;
            }
        }
    }
    return 0;
}
