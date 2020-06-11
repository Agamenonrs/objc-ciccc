//
//  QuestionManager.h
//  Maths
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (nonatomic) NSMutableArray *questions;

- (NSString*) timeOutput;
@end

NS_ASSUME_NONNULL_END
