//
//  main.m
//  Threelow
//
//  Created by Agamenon Rocha Dos Santos on 15/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *game = [[GameController alloc]init];
        
        BOOL play = YES;
        int8_t rolls = 4;
        while (play && rolls > -1) {
            [game printMenu];
            [game display];
            NSString *input = [InputHandler getUserInput:@""];
            if([input isEqualToString:@"done"]){
                play = NO;
                NSLog(@"Exit");
            }
            if([input isEqualToString:@"roll"]){
                [game rollDice];
                rolls--;
            }else if ([input isEqualToString:@"hold"]){
                NSString *input = [InputHandler getUserInput:@"Enter the number of die:\n? "];
                NSInteger holdIndex = [input intValue];
                if(holdIndex){
                    [game holdDie:holdIndex];
                }
            }else if ([input isEqualToString:@"reset"]) {
                [game resetDice];
            }else{
                NSLog(@"Wrong option");
            }
        }
    }
    return 0;
}
