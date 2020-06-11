//
//  QuestionFactory.h
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclassNames;

- (Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
