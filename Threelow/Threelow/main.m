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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (int i = 0 ; i< 5; i++){
            Dice *d = [[Dice alloc]init];
            [array addObject:d];
        }
        
        BOOL play = YES;
        while (play) {
            NSString *input = [InputHandler getUserInput:@"Play again? "];
            if([input isEqualToString:@"roll"]){
                for (Dice *d in array) {
                    [d getRandomValue];
                    NSLog(@"Dice value %d", [d value]);
                }
            }else{
                play = NO;
                NSLog(@"Exit");
            }
            
            
        }
        
        
    }
    return 0;
}
