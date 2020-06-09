//
//  main.m
//  Lab1
//
//  Created by Agamenon Rocha Dos Santos on 08/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, char *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  printf("%s\n", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}

void printMenuOptions(){
    printf("1- UPPERCASE\n");
    printf("2- LOWERCASE\n");
    printf("3- NUMBERIZE\n");
    printf("4- CANADIANIZE\n");
    printf("5- RESPOND\n");
    printf("6- DE-SPACE-IT\n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BOOL exit = NO;
        while (!exit ){
            printMenuOptions();
            NSString *strMenu = getUserInput(20, "Type menu option: ");
            
            if ([strMenu  isEqual: @"q"]){
                exit = YES;
                continue;
            }
            int menuOption = [strMenu intValue];
            NSString *input = getUserInput(20, "Type something: ");
            NSString *result = NULL;
            if ( menuOption == 1 ){
                result = [input uppercaseString];
            }else if (menuOption == 2){
                result = [input lowercaseString];
            }else if (menuOption == 3){
                int value = [input intValue];
                //incomplet
//                if ([NSString validateString:input withPattern:"^[0-9]+$"]){
//
//                }
//                if (value == NULL){
//                    printf(@"Error: Convert value into int : %@", input);
//                }
                //printf("into int: %d",value);
            }else if (menuOption == 4){
                result = [NSString stringWithFormat:@"%@ %@", input, @", eh?"];
            }else if (menuOption == 5){
                result = [input substringFromIndex:[input length] - 1];
                if( [result  isEqual: @"?"]){
                    printf("I don't know");
                }else if ([result isEqual: @"!"]){
                    printf("Whoa, calm down!");
                }
                continue;
            }else if (menuOption == 6){
                result = [input stringByReplacingOccurrencesOfString:@" "
                withString:@"-"];
            }
            NSLog(@"New Value: %@\n", result);
            
        }
        
    }
    return 0;
}
