//
//  main.m
//  Lab13
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = [InputHandler getUserInput:@"Type some word: "];
        NSLog(@"word typed %@", input);
        //NSString *greeting = @MESSAGE;
        NSLog(@"%@", [input stringByPigLatinization]);
        // Tokenizing
        NSArray *tokenizedString = [input componentsSeparatedByString: @" "];
        NSLog(@"Tokenized: %@", tokenizedString[0]);
        //change prefix
        NSString *prefix= @"cha";
        if ([input hasPrefix:prefix]){
        //[myString stringByAppendingString:@" is just a test"]
            NSString *newInput = [input substringFromIndex:[prefix length]];
            NSString *newInput2 = [newInput stringByAppendingString:prefix];
            NSLog(@"Prefix removed: %@", newInput);
            NSLog(@"Prefix appended: %@", newInput2);
        }
            
        
        
    }
    return 0;
}
