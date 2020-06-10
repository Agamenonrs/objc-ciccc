//
//  ScoreKeeper.h
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic) int right, wrong;

- (NSString *) showResul;

@end

NS_ASSUME_NONNULL_END
