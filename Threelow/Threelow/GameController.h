//
//  GameController.h
//  Threelow
//
//  Created by Agamenon Rocha Dos Santos on 15/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *dices, *heldDices;
@property (nonatomic) NSArray *emojis;

-(void) printMenu;
-(void) display;
-(void) holdDie: (NSInteger) index;
-(void) resetDice;
-(void) rollDice;
@end

NS_ASSUME_NONNULL_END
