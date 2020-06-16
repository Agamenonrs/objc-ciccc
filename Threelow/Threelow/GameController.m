//
//  GameController.m
//  Threelow
//
//  Created by Agamenon Rocha Dos Santos on 15/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init {
    if (self = [super init]) {
        _dices = [[NSMutableArray alloc]init];
        _heldDices = [[NSMutableArray alloc]init];
        for (int i = 0 ; i< 5; i++){
            [_heldDices addObject:[NSNumber numberWithBool:NO]];
            Dice *d = [[Dice alloc]init];
            [_dices addObject:d];
        }
        
    }
    return self;
}

-(void) printMenu{
    NSLog(@"'roll' to roll the dice");
    NSLog(@"'hold' to hold a dice");
    NSLog(@"'reset' to un-hold all dice");
    NSLog(@"'show' to see current dice");
    NSLog(@"'display' to show current status");
}

-(void) showInfo{
    NSLog(@"Remaining rolls:   ");
    NSLog(@"-------------------");
    NSLog(@"-- Current Dice --");
    NSLog(@"  %@ %@ %@ %@ %@ \n" ,
          [self.heldDices[0] boolValue] ? @"[⚁]" : @"⚁",
          [self.heldDices[1] boolValue] ? @"[⚂]" : @"⚂",
          [self.heldDices[2] boolValue] ? @"[⚃]" : @"⚃",
          [self.heldDices[3] boolValue] ? @"[⚄]" : @"⚄",
          [self.heldDices[4] boolValue] ? @"[⚅]" : @"⚅");
    NSLog(@"- Total of scores -");
    NSLog(@"score: \n");
 }

-(void) holdDie: (NSInteger) index{
    self.heldDices[index-1] =  [self.heldDices[index-1] boolValue] ? [NSNumber numberWithBool:NO] : [NSNumber numberWithBool:YES] ;
}




@end
