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

-(void) printMenu;
-(void) showInfo;
-(void) holdDie: (NSInteger) index;
@end

NS_ASSUME_NONNULL_END
