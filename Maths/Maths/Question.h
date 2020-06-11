//
//  AdditionQuestion.h
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer, rightValue, leftValue;
@property (nonatomic) NSDate *startTime, *endTime;

- (NSInteger) answer;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;
@end

NS_ASSUME_NONNULL_END
