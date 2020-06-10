//
//  ScoreKeeper.m
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (NSString *) showResul{
    int amount = self.right + self.wrong;
    float score = 0.0;
    if (amount > 0){
        score = (float) self.right / amount * 100;
    }
    
    return [NSString stringWithFormat:@"score: %d right, %d wrong ---- %.2f%%\n", self.right,self.wrong, score];
}
@end
