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
        while (play) {
            [game printMenu];
            [game showInfo];
            NSString *input = [InputHandler getUserInput:@"Play again? "];
            if([input isEqualToString:@"roll"]){
                play = NO;
                NSLog(@"Exit");
            }
            if([input isEqualToString:@"roll"]){
                for (Dice *d in [game dices]) {
                    [d getRandomValue];
                    NSLog(@"Dice value %d", [d value]);
                }
            }else if ([input isEqualToString:@"hold"]){
                NSString *input = [InputHandler getUserInput:@"Enter the number of die:\n? "];
                NSInteger holdIndex = [input intValue];
                if(holdIndex){
                    [game holdDie:holdIndex];
                }
            }else if ([input isEqualToString:@"reset"]) {
                [game reset];
            }else{
                NSLog(@"Wrong option");
            }
        }
    }
    return 0;
}
