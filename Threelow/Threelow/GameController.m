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

int8_t rolls = 4;
int8_t score = 0;


- (instancetype)init {
    if (self = [super init]) {
        _dices = [[NSMutableArray alloc]init];
        _heldDices = [[NSMutableArray alloc]init];
        _emojis =  @[@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅",@"[⚀]",@"[⚁]",@"[⚂]",@"[⚃]",@"[⚄]",@"[⚅]"];
        for (int i = 0 ; i< 5; i++){
            [_heldDices addObject:[NSNumber numberWithBool:NO]];
            Dice *d = [[Dice alloc]init];
            [d generateRandomValue];
            [_dices addObject:d];
        }
        
    }
    return self;
}

-(void) printMenu{
    NSLog(@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'show' to see current dice\n'done' to end the game\n'display' to show current stats");
}

-(void) display{
    NSLog(@"Remaining rolls:   %d",rolls);
    NSLog(@"-------------------");
    NSLog(@"-- Current Dice --");
    NSLog(@"  %@ %@ %@ %@ %@ \n" ,
          [self getEmojiDice:0],
          [self getEmojiDice:1],
          [self getEmojiDice:2],
          [self getEmojiDice:3],
          [self getEmojiDice:4]);
    NSLog(@"- Total of scores -");
    NSLog(@"score: %d \n",score);
}

-(void) holdDie: (NSInteger) index{
    self.heldDices[index-1] =  [self.heldDices[index-1] boolValue] ? [NSNumber numberWithBool:NO] : [NSNumber numberWithBool:YES] ;
    [self calcScore];
}

- (void) calcScore{
    score = 0;
    for (int i = 0; i < [self.heldDices count]; i++){
        if ( [self.heldDices[i] boolValue]){
            score = score + [self.dices[i] faceValue] +1;
        }
    }
    
}
- (NSString *) getEmojiDice: (int32_t) index{
    return [self.heldDices[index] boolValue] ? self.emojis[[self.dices[index] faceValue]+6] : self.emojis[[self.dices[index] faceValue]];
}

-(void) resetDice{
    for (int i = 0 ; i< [self.heldDices count]; i++){
        self.heldDices[i] = [NSNumber numberWithBool:NO];
    }
    score = 0;
}

-(void) holdAll{
    for (int i = 0 ; i< [self.heldDices count]; i++){
        self.heldDices[i] = [NSNumber numberWithBool:YES];
    }
    score = 0;
}

- (void) rollDice{
        for (int i = 0 ; i< 5; i++){
            if ( ![self.heldDices[i] boolValue] ){
                [self.dices[i] generateRandomValue];
                [self.dices[i] faceValue];
            }
        }
    if (rolls == 0){
        [self holdAll];
        [self calcScore];
        [self display];
    }
    rolls--;
}
@end
