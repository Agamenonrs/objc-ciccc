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
        NSString *input = [InputHandler getUserInput:@"Type something: "];
        NSLog(@"%@", [input stringByPigLatinization]);
                    
        
        
    }
    return 0;
}
