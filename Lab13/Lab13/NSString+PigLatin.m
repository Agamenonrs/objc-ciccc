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
  return [@"CICCC " stringByAppendingString:self];
}

@end
