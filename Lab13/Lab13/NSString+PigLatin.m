//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    // Tokenizing
    NSMutableArray *tokenizedString = [NSMutableArray arrayWithArray:[self componentsSeparatedByString: @" "]];
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    
    for (int i = 0; i< [tokenizedString count]; i++){
        for ( int j = 0 ; j < [clusters count] ; j++){
            if ([tokenizedString[i] hasPrefix: clusters[j]]){
                NSString *newInput2 = [[tokenizedString[i] substringFromIndex:[clusters[j] length]] stringByAppendingString:[clusters[j] stringByAppendingString:@"ay"]];
                //[tokenizedString insertObject:newInput2 atIndex:i];
                [tokenizedString replaceObjectAtIndex:i withObject:newInput2];
                break;
            }
        }
    }
    return [tokenizedString componentsJoinedByString:@" "];
}

@end
